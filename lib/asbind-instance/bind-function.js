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
  if (!asbindInstance.isAsyncifyModule) {
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
  } else {
    return function(...args) {
      if (
        asbindInstance.loadedModule.exports.asyncify_get_state() ===
        2 /* Rewinding */
      ) {
        asbindInstance.loadedModule.exports.asyncify_stop_rewind();
        asbindInstance.loadedModule.exports.__unpin(
          asbindInstance.asyncifyState.ptr
        );
        return returnValueConverterFunction(
          asbindInstance,
          asbindInstance.asyncifyState.value,
          importedFunctionDescriptor.returnType
        );
      }

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
      if (!(result instanceof Promise)) {
        return returnValueConverterFunction(
          asbindInstance,
          result,
          importedFunctionDescriptor.returnType
        );
      }
      asbindInstance.asyncifyState = {
        ptr: asbindInstance.loadedModule.exports.__new(
          asbindInstance.asyncifyStorageSize,
          0
        )
      };
      asbindInstance.loadedModule.exports.__pin(
        asbindInstance.asyncifyState.ptr
      );
      const dv = new DataView(
        asbindInstance.loadedModule.exports.memory.buffer
      );
      dv.setUint32(
        asbindInstance.asyncifyState.ptr,
        asbindInstance.asyncifyState.ptr + 8,
        true
      );
      dv.setUint32(
        asbindInstance.asyncifyState.ptr + 4,
        asbindInstance.asyncifyState.ptr + 8 * 1024,
        true
      );
      asbindInstance.loadedModule.exports.asyncify_start_unwind(
        asbindInstance.asyncifyState.ptr
      );
      asbindInstance.asyncifyState.promise = result;
    };
  }
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
  if (!asbindInstance.isAsyncifyModule) {
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
  } else {
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
      return function f(...args) {
        const result = exportedFunction(...args);
        if (
          asbindInstance.loadedModule.exports.asyncify_get_state() ===
          0 /* Normal */
        ) {
          return returnValueConverterFunction(
            asbindInstance,
            result,
            exportedFunctionDescriptor.returnType
          );
        }
        asbindInstance.loadedModule.exports.asyncify_stop_unwind();
        let localAsyncifyState = asbindInstance.asyncifyState;
        return localAsyncifyState.promise.then(value => {
          localAsyncifyState.value = value;
          asbindInstance.asyncifyState = localAsyncifyState;
          asbindInstance.loadedModule.exports.asyncify_start_rewind(
            asbindInstance.asyncifyState.ptr
          );
          return f(...args);
        });
      }.bind(this)(...newArgs);
    };
  }
}
