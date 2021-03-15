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
function normalizeArrayBufferViewTypeName(typeName) {
  if (typeName.startsWith("Big")) {
    // Slice off `Big` as the loader doesn’t have that prefix.
    typeName = typeName.slice(3);
  }
  return typeName;
}

function getTypeId(asbindInstance, typeName) {
  if (typeName in asbindInstance.typeDescriptor.typeIds) {
    return asbindInstance.typeDescriptor.typeIds[typeName];
  }
  throw Error(`Unknown type ${JSON.stringifty(typeName)}`);
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

function getArrayBufferView(asbindInstance, value, typeName) {
  return asbindInstance.exports[
    `__get${normalizeArrayBufferViewTypeName(typeName)}View`
  ](value);
}

function putArrayBuffer(asbindInstance, value, typeName) {
  return asbindInstance.exports.__newArray(
    getTypeId(asbindInstance, typeName),
    value
  );
}

function arrayInnerType(typeName) {
  if (!typeName.startsWith("Array<")) {
    throw Error(`${JSON.stringify(typeName)} is not an array type`);
  }
  return typeName.slice("Array<".length, -1);
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
    getTypeId(asbindInstance, typeName),
    convertedValues
  );
}

const converters = new Map([
  [/^void$/, { ascToJs: nop, jsToAsc: nop }],
  [/^(i|u)(8|16|32)$/, { ascToJs: nop, jsToAsc: nop }],
  [/^f(32|64)$/, { ascToJs: nop, jsToAsc: nop }],
  [/^[sS]tring$/, { ascToJs: getString, jsToAsc: putString }],
  [
    /^(Ui|I)nt(8|16|32)Array$/,
    { ascToJs: getArrayBufferView, jsToAsc: putArrayBuffer }
  ],
  [
    /^Big(Ui|I)nt64Array$/,
    { ascToJs: getArrayBufferView, jsToAsc: putArrayBuffer }
  ],
  [
    /^Uint8ClampedArray$/,
    { ascToJs: getArrayBufferView, jsToAsc: putArrayBuffer }
  ],
  [
    /^Float(32|64)Array$/,
    { ascToJs: getArrayBufferView, jsToAsc: putArrayBuffer }
  ],
  [/^Array<.+>$/, { ascToJs: getArray, jsToAsc: putArray }]
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
