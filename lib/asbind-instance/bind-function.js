import { validateExportsAndFunction } from "./validate";
import SUPPORTED_REF_TYPES from "./supported-ref-types";

// Function that takes in an asbindInstance, and importObject, and the path to the import function on the object
// (E.g ["env", "myObject", "myFunction"] for {env: myObject: {myFunction: () => {}}})
// To find the importFunction, wrap it, re-assign it to the improt Object, and allow it to access itself later.
export function bindImportFunction(
  asbindInstance,
  importObject,
  importObjectKeyPathToFunction
) {
  const getFunctionFromKeyPath = (baseObject, keys) => {
    const newObjectOrFunction = baseObject[keys[0]];
    keys.shift();
    if (keys.length > 0) {
      return getFunctionFromKeyPath(newObjectOrFunction, keys);
    }

    // We found the final function from the path
    return newObjectOrFunction;
  };
  const importFunction = getFunctionFromKeyPath(importObject, [
    ...importObjectKeyPathToFunction
  ]);
  const originalImport = importFunction;

  // Cannot Validate here, as exports will not be set until after instantiation

  // NOTE: Since bound import is being bound to the importObject,
  // the function this, will become the importObject
  let functionThis = importObject;
  const boundImport = function() {
    const exports = asbindInstance.unboundExports;

    // Get the 'this' of the function
    if (functionThis === importObject) {
      functionThis = getFunctionFromKeyPath(importObject, [
        ...importObjectKeyPathToFunction
      ]);
    }

    // Get all arguments as an array
    const originalArguments = Array.prototype.slice.call(arguments);

    // Replace all supported reference types,
    // With their respective references
    const argumentsWithReplacedRefs = [];
    originalArguments.forEach((arg, argIndex) => {
      // Find our supported type, if there is one
      let supportedType = undefined;

      // Check if we already cached the type
      if (
        functionThis.shouldCacheTypes &&
        functionThis.cachedArgTypes[argIndex] &&
        functionThis.cachedArgTypes[argIndex].type === "ref"
      ) {
        supportedType =
          SUPPORTED_REF_TYPES[functionThis.cachedArgTypes[argIndex].key];
      } else {
        Object.keys(SUPPORTED_REF_TYPES).some(key => {
          if (SUPPORTED_REF_TYPES[key].isTypeFromReference(exports, arg)) {
            supportedType = SUPPORTED_REF_TYPES[key];
            if (functionThis.shouldCacheTypes) {
              functionThis.cachedArgTypes[argIndex] = {
                type: "ref",
                key
              };
            }
            return true;
          }

          return false;
        });
      }

      if (supportedType) {
        argumentsWithReplacedRefs.push(
          supportedType.getValueFromRef(exports, arg)
        );
      } else {
        // Assume it was meant to be passed a number
        argumentsWithReplacedRefs.push(arg);
      }
    });

    // Call the import function
    const response = originalImport.apply(null, argumentsWithReplacedRefs);

    // TODO: Returning High-level types from Import functions is not supported by asbind :(
    return response;
  };

  // Initialize the state of our function
  boundImport.shouldCacheTypes = true;
  boundImport.cachedArgTypes = [];

  return boundImport;
}

// Function that takes in an asbind instance, and the key to the export function on the
// abindInstance.exports object, to be wrapped and then re-assigned to the asbindInstance.exports.
export function bindExportFunction(asbindInstance, exportFunctionKey) {
  const exports = asbindInstance.unboundExports;
  const originalExport = exports[exportFunctionKey];

  validateExportsAndFunction(exports, originalExport);

  // NOTE: Since bound export is being bound to the asbindInstance exports,
  // the function this, will become the asbindInstance exports
  let functionThis = asbindInstance.exports;
  const boundExport = function() {
    // Get all arguments as an array
    const originalArguments = Array.prototype.slice.call(arguments);

    // Get the 'this' of the function
    if (functionThis === asbindInstance.exports) {
      functionThis = asbindInstance.exports[exportFunctionKey];
    }

    // Replace all supported reference types,
    // With their respective references
    const argumentsWithReplacedRefs = [];
    const refIndexes = [];
    originalArguments.forEach((arg, argIndex) => {
      // WebAssembly supports numbers
      // If a number is being passed, it does not need a reference
      if (typeof arg === "number") {
        argumentsWithReplacedRefs.push(arg);
        if (functionThis.shouldCacheTypes) {
          functionThis.cachedArgTypes[argIndex] = {
            type: "number"
          };
        }
        return;
      }

      // A supported reference type is being passed,
      // Find our supported type
      let supportedType = undefined;

      // Check if we already cached the type
      if (
        functionThis.shouldCacheTypes &&
        functionThis.cachedArgTypes[argIndex] &&
        functionThis.cachedArgTypes[argIndex].type === "ref"
      ) {
        supportedType =
          SUPPORTED_REF_TYPES[functionThis.cachedArgTypes[argIndex].key];
      } else {
        // Find the type, and error if we could not
        Object.keys(SUPPORTED_REF_TYPES).some(key => {
          if (SUPPORTED_REF_TYPES[key].isTypeFromArgument(arg)) {
            supportedType = SUPPORTED_REF_TYPES[key];
            if (functionThis.shouldCacheTypes) {
              functionThis.cachedArgTypes[argIndex] = {
                type: "ref",
                key
              };
            }
            return true;
          }

          return false;
        });

        if (!supportedType) {
          throw new Error(
            `The argument, ${arg}, is not a supported type by asbind`
          );
        }
      }

      argumentsWithReplacedRefs.push(supportedType.getRef(exports, arg));
      refIndexes.push(argIndex);
    });

    // Call the Export
    // NOTE: Super random, but we don't hav to worry about ref conflicts here.
    // Since we can only return a single value, there should be no matching reference
    // if the returned value is not a reference.
    const exportFunctionResponse = originalExport.apply(
      null,
      argumentsWithReplacedRefs
    );

    // Release all references
    refIndexes.forEach(refIndex => {
      exports.__release(argumentsWithReplacedRefs[refIndex]);
    });

    // Get the response item from the returned reference
    let response = undefined;
    if (exportFunctionResponse !== undefined) {
      // Find our supported type
      let supportedType = undefined;

      // Check if we cached the return type
      if (functionThis.shouldCacheTypes && functionThis.cachedReturnTypes[0]) {
        if (functionThis.cachedReturnTypes[0].type === "ref") {
          supportedType = supportedType =
            SUPPORTED_REF_TYPES[functionThis.cachedReturnTypes[0].key];
        }
        // Let it fall through the if and handle the primitive (number) logic
      } else {
        // We need to find / cache the type
        Object.keys(SUPPORTED_REF_TYPES).some(key => {
          if (
            SUPPORTED_REF_TYPES[key].isTypeFromReference(
              exports,
              exportFunctionResponse
            )
          ) {
            supportedType = SUPPORTED_REF_TYPES[key];
            if (functionThis.shouldCacheTypes) {
              functionThis.cachedReturnTypes[0] = {
                type: "ref",
                key
              };
            }
            return true;
          }

          return false;
        });
      }

      if (supportedType) {
        response = supportedType.getValueFromRef(
          exports,
          exportFunctionResponse
        );
      } else if (typeof exportFunctionResponse === "number") {
        response = exportFunctionResponse;
        if (functionThis.shouldCacheTypes) {
          functionThis.cachedReturnTypes[0] = {
            type: "number"
          };
        }
      }
    }

    // Return the result
    return response;
  };

  // Initialize the state of our function
  boundExport.shouldCacheTypes = true;
  boundExport.cachedArgTypes = [];
  boundExport.cachedReturnTypes = [];

  // Return the bound Export
  return boundExport;
}
