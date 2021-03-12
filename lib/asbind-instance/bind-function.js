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
  return asbindInstance.exports.__getArray(value);
}

function getArrayBufferView(asbindInstance, value, typeName) {
  return asbindInstance.exports[
    `__get${normalizeArrayBufferViewTypeName(typeName)}View`
  ](value);
}

function putArrayBuffer(asbindInstance, value, typeName) {
  return asbindInstance.exports.__newArray(
    asbindInstance.exports[
      `__asbind_${normalizeArrayBufferViewTypeName(typeName)}_ID`
    ].value,
    value
  );
}

const ascToJsConverters = new Map([
  [/void/, nop],
  [/(i|u)(8|16|32)/, nop],
  [/f(32|64)/, nop],
  [/[sS]tring/, getString],
  [/ArrayBuffer/, getArrayBuffer],
  [/(Ui|I)nt(8|16|32)Array/, getArrayBufferView],
  [/Big(Ui|I)nt64Array/, getArrayBufferView],
  [/Uint8ClampedArray/, getArrayBufferView],
  [/Float(32|64)Array/, getArrayBufferView]
]);

function getAscToJsConverterForType(typeName) {
  for (const [matcher, converter] of ascToJsConverters) {
    if (matcher.test(typeName)) {
      return converter;
    }
  }
  throw Error(`No AscToJs converter for ${JSON.stringify(typeName)}`);
}

const jsToAscConverters = new Map([
  [/void/, nop],
  [/(i|u)(8|16|32)/, nop],
  [/f(32|64)/, nop],
  [/[sS]tring/, putString],
  [/ArrayBuffer/, putArrayBuffer],
  [/(Ui|I)nt(8|16|32)Array/, putArrayBuffer],
  [/Big(Ui|I)nt64Array/, putArrayBuffer],
  [/Uint8ClampedArray/, putArrayBuffer],
  [/Float(32|64)Array/, putArrayBuffer]
]);

function getJsToAscConverterForType(typeName) {
  for (const [matcher, converter] of jsToAscConverters) {
    if (matcher.test(typeName)) {
      return converter;
    }
  }
  throw Error(`No JsToAsc converter for ${JSON.stringify(typeName)}`);
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
