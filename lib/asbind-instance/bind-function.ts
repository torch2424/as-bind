import { TypeDefFn } from "../types";
import AsbindInstance from "./asbind-instance";

import {
  getAscToJsConverterForType,
  getJsToAscConverterForType,
} from "./type-converters";

function getFunctionFromKeyPath(baseObject, keys) {
  let result = baseObject;
  for (const key of keys) {
    result = result?.[key];
  }
  return result;
}

export function bindImportFunction(
  asbindInstance: AsbindInstance,
  importedFunction: Function,
  importedFunctionDescriptor: TypeDefFn
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
  return function (...args) {
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
  asbindInstance: AsbindInstance,
  exportedFunction: Function,
  exportedFunctionDescriptor: TypeDefFn
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
    // The conversion function of the _next_ parameter could potentially
    // trigger GC and collect the previous parameter before we even invoke
    // the actual function. That’s bad! We’ll pin all non-primitive parameters before invocation
    // and unpin them after.
    const pinnedArgs = [];
    const newArgs = args.map((originalParameter, i) => {
      const convertedParameter = argumentConverterFunctions[i](
        asbindInstance,
        originalParameter,
        exportedFunctionDescriptor.parameters[i]
      );
      if (convertedParameter !== originalParameter) {
        asbindInstance.exports.__pin(convertedParameter);
        pinnedArgs.push(convertedParameter);
      }
      return convertedParameter;
    });
    const result = exportedFunction(...newArgs);
    pinnedArgs.forEach((arg) => asbindInstance.exports.__unpin(arg));
    return returnValueConverterFunction(
      asbindInstance,
      result,
      exportedFunctionDescriptor.returnType
    );
  };
}
