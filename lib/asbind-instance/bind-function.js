function getFunctionFromKeyPath(baseObject, keys) {
  let result = baseObject;
  for (const key of keys) {
    result = result?.[key];
  }
  return result;
}

// Converts web platform names for the different ArrayBufferViews
// to the names that ASC understands. Currently, that only means
// to cut off the `Big` in `BigInt64Array`.
const stdlibTypedArrayPrefix = "~lib/typedarray/";
function normalizeArrayBufferViewTypeName(typeName) {
  // Don’t do anything if this is not a stdlib type.
  if (!typeName.startsWith(stdlibTypedArrayPrefix)) {
    return typeName;
  }
  typeName = typeName.slice(stdlibTypedArrayPrefix.length);
  if (typeName.startsWith("Big")) {
    // Slice off `Big` as the loader doesn’t have that prefix.
    typeName = typeName.slice(3);
  }
  return typeName;
}

function nop(asbindInstance, value, typeName) {
  return value;
}

function getString(asbindInstance, value, typeName) {
  return asbindInstance.exports.__getString(value);
}

function putString(asbindInstance, value, typeName) {
  return asbindInstance.exports.__newString(value);
}

function getArrayBuffer(asbindInstance, value, typeName) {
  return asbindInstance.exports.__getArrayBuffer(value);
}

function putArrayBuffer(asbindInstance, value, typeName) {
  const ptr = asbindInstance.exports.__new(
    value.byteLength,
    asbindInstance.getTypeId(typeName)
  );
  new Uint8Array(
    asbindInstance.exports.memory.buffer,
    ptr,
    value.byteLength
  ).set(new Uint8Array(value));
  return ptr;
}

function getArrayBufferView(asbindInstance, value, typeName) {
  return asbindInstance.exports[
    `__get${normalizeArrayBufferViewTypeName(typeName)}View`
  ](value);
}
function putArrayBufferView(asbindInstance, value, typeName) {
  return asbindInstance.exports.__newArray(
    asbindInstance.getTypeId(typeName),
    value
  );
}

const stdlibArray = "~lib/array/Array";
function arrayInnerType(typeName) {
  if (!typeName.startsWith(stdlibArray)) {
    throw Error(`${JSON.stringify(typeName)} is not an array type`);
  }
  // Cut off stdlib path + generic angle brackets.
  return typeName.slice(`${stdlibArray}<`.length, -1);
}

function getArray(asbindInstance, value, typeName) {
  const innerTypeName = arrayInnerType(typeName);
  const innerTypeConverter = getConverterForType(innerTypeName);
  const rawArray = asbindInstance.exports.__getArray(value);
  return rawArray.map(v =>
    innerTypeConverter.ascToJs(asbindInstance, v, innerTypeName)
  );
}

function putArray(asbindInstance, value, typeName) {
  const innerTypeName = arrayInnerType(typeName);
  const innerTypeConverter = getConverterForType(innerTypeName);
  const convertedValues = value.map(v =>
    innerTypeConverter.jsToAsc(asbindInstance, v, innerTypeName)
  );
  return asbindInstance.exports.__newArray(
    asbindInstance.getTypeId(typeName),
    convertedValues
  );
}

export const converters = new Map([
  [/^void$/, { ascToJs: nop, jsToAsc: nop }],
  [/^(i|u)(8|16|32)$/, { ascToJs: nop, jsToAsc: nop }],
  [/^f(32|64)$/, { ascToJs: nop, jsToAsc: nop }],
  [/^~lib\/string\/String$/, { ascToJs: getString, jsToAsc: putString }],
  [
    /^~lib\/typedarray\/(Ui|I)nt(8|16|32)Array$/,
    { ascToJs: getArrayBufferView, jsToAsc: putArrayBufferView }
  ],
  [
    /^~lib\/typedarray\/Big(Ui|I)nt64Array$/,
    { ascToJs: getArrayBufferView, jsToAsc: putArrayBufferView }
  ],
  [
    /^~lib\/typedarray\/Uint8ClampedArray$/,
    { ascToJs: getArrayBufferView, jsToAsc: putArrayBufferView }
  ],
  [
    /^~lib\/typedarray\/Float(32|64)Array$/,
    { ascToJs: getArrayBuffer, jsToAsc: putArrayBufferView }
  ],
  [
    /^~lib\/arraybuffer\/ArrayBuffer$/,
    { ascToJs: getArrayBuffer, jsToAsc: putArrayBuffer }
  ],
  [/^~lib\/array\/Array<.+>$/, { ascToJs: getArray, jsToAsc: putArray }]
]);

const warned = new Set();
function getConverterForType(typeName) {
  for (const [matcher, converter] of converters) {
    if (matcher.test(typeName)) {
      return converter;
    }
  }
  if (!warned.has(typeName)) {
    console.warn(
      `No converter for ${JSON.stringify(typeName)}, using pass-through`
    );
    warned.add(typeName);
  }
  return { ascToJs: nop, jsToAsc: nop };
}

function getAscToJsConverterForType(typeName) {
  return getConverterForType(typeName)?.ascToJs;
}

function getJsToAscConverterForType(typeName) {
  return getConverterForType(typeName)?.jsToAsc;
}

// Function that takes in an asbindInstance, and importObject, and the path to the import function on the object
// (E.g ["env", "myObject", "myFunction"] for {env: myObject: {myFunction: () => {}}})
// To find the importFunction, wrap it, re-assign it to the improt Object, and allow it to access itself later.
export function bindImportFunction(
  asbindInstance,
  importObject,
  importObjectKeyPathToFunction
) {
  const importedFunction = getFunctionFromKeyPath(
    importObject,
    importObjectKeyPathToFunction
  );
  const importedFunctionDescriptor = getFunctionFromKeyPath(
    asbindInstance.typeDescriptor.importedFunctions,
    importObjectKeyPathToFunction
  );
  if (!importedFunctionDescriptor) {
    throw Error(`Unknown function ${importObjectKeyPathToFunction.join(".")}`);
  }

  const argumentConverterFunctions = importedFunctionDescriptor.parameters.map(
    getAscToJsConverterForType
  );
  const returnValueConverterFunction = getJsToAscConverterForType(
    importedFunctionDescriptor.returnType
  );

  return function(...args) {
    if (args.length != argumentConverterFunctions.length) {
      throw Error(
        `Expected ${argumentConverterFunctions.length} arguments, got ${args.length}`
      );
    }
    const newArgs = args.map((v, i) =>
      argumentConverterFunctions[i](
        asbindInstance,
        v,
        importedFunctionDescriptor.parameters[i]
      )
    );
    const result = importedFunction(...newArgs);
    return returnValueConverterFunction(
      asbindInstance,
      result,
      importedFunctionDescriptor.returnType
    );
  };
}

// Function that takes in an asbind instance, and the key to the export function on the
// abindInstance.exports object, to be wrapped and then re-assigned to the asbindInstance.exports.
export function bindExportFunction(asbindInstance, exportFunctionKey) {
  const exportedFunction =
    asbindInstance.loadedModule.exports[exportFunctionKey];
  const exportedFunctionDescriptor =
    asbindInstance.typeDescriptor.exportedFunctions[exportFunctionKey];
  if (!exportedFunctionDescriptor) {
    throw Error(`Unknown function ${exportFunctionKey}`);
  }

  const argumentConverterFunctions = exportedFunctionDescriptor.parameters.map(
    getJsToAscConverterForType
  );
  const returnValueConverterFunction = getAscToJsConverterForType(
    exportedFunctionDescriptor.returnType
  );

  return (...args) => {
    if (args.length != argumentConverterFunctions.length) {
      throw Error(
        `Expected ${argumentConverterFunctions.length} arguments, got ${args.length}`
      );
    }
    const newArgs = args.map((v, i) =>
      argumentConverterFunctions[i](
        asbindInstance,
        v,
        exportedFunctionDescriptor.parameters[i]
      )
    );
    const result = exportedFunction(...newArgs);
    return returnValueConverterFunction(
      asbindInstance,
      result,
      exportedFunctionDescriptor.returnType
    );
  };
}
