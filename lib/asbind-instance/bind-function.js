import {
  getAscToJsConverterForType,
  getJsToAscConverterForType
} from "./type-converters";

function getFunctionFromKeyPath(baseObject, keys) {
  let result = baseObject;
  for (const key of keys) {
    result = result?.[key];
  }
  return result;
}

export function bindImportFunction(
  asbindInstance,
  importedFunction,
  importedFunctionDescriptor
) {
  // Grab type converter functions according to the type descriptor
  const argumentConverterFunctions = importedFunctionDescriptor.parameters.map(
    getAscToJsConverterForType
  );
  const returnValueConverterFunction = getJsToAscConverterForType(
    importedFunctionDescriptor.returnType
  );

  // Create a wrapper function that applies the correct converter function to arguments and
  // return value respectively.
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
export function bindExportFunction(
  asbindInstance,
  exportedFunction,
  exportedFunctionDescriptor
) {
  // Grab type converter functions according to the type descriptor
  const argumentConverterFunctions = exportedFunctionDescriptor.parameters.map(
    getJsToAscConverterForType
  );
  const returnValueConverterFunction = getAscToJsConverterForType(
    exportedFunctionDescriptor.returnType
  );

  // Create a wrapper function that applies the correct converter function to arguments and
  // return value respectively.
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
