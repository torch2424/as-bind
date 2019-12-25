import { validateExportsAndFunction } from "./validate";
import SUPPORTED_REF_TYPES from "./supported-ref-types";

export function bindImportFunction(asbindInstance, importFunction) {
  const originalImport = importFunction;

  // Cannot Validate here, as exports will not be set until after instantiation

  const boundImportState = {
    shouldCacheTypes: true,
    cachedArgTypes: []
  };
  const boundImport = function() {
    const exports = asbindInstance.unboundExports;

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
        this.shouldCacheTypes &&
        this.cachedArgTypes[argIndex] &&
        this.cachedArgTypes[argIndex].type === "ref"
      ) {
        supportedType = SUPPORTED_REF_TYPES[this.cachedArgTypes[argIndex].key];
      } else {
        Object.keys(SUPPORTED_REF_TYPES).some(key => {
          if (SUPPORTED_REF_TYPES[key].isTypeFromReference(exports, arg)) {
            supportedType = SUPPORTED_REF_TYPES[key];
            this.cachedArgTypes[argIndex] = {
              type: "ref",
              key
            };
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
    originalImport.apply(null, argumentsWithReplacedRefs);

    // TODO: Returning from Import functions is not supported by asbind :(
  };

  return boundImport.bind(boundImportState);
}

export function bindExportFunction(asbindInstance, exportFunctionKey) {
  const exports = asbindInstance.unboundExports;
  const originalExport = exports[exportFunctionKey];

  validateExportsAndFunction(exports, originalExport);

  const boundExportState = {
    shouldCacheTypes: true,
    cachedArgTypes: [],
    cachedReturnTypes: []
  };
  const boundExport = function() {
    // Get all arguments as an array
    const originalArguments = Array.prototype.slice.call(arguments);

    // Replace all supported reference types,
    // With their respective references
    const argumentsWithReplacedRefs = [];
    const refIndexes = [];
    originalArguments.forEach((arg, argIndex) => {
      // WebAssembly supports numbers
      // If a number is being passed, it does not need a reference
      if (typeof arg === "number") {
        this.cachedArgTypes[argIndex] = {
          type: "number"
        };
        argumentsWithReplacedRefs.push(arg);
        return;
      }

      // A supported reference type is being passed,
      // Find our supported type
      let supportedType = undefined;

      // Check if we already cached the type
      if (
        this.shouldCacheTypes &&
        this.cachedArgTypes[argIndex] &&
        this.cachedArgTypes[argIndex].type === "ref"
      ) {
        supportedType = SUPPORTED_REF_TYPES[this.cachedArgTypes[argIndex].key];
      } else {
        // Find the type, and error if we could not
        Object.keys(SUPPORTED_REF_TYPES).some(key => {
          if (SUPPORTED_REF_TYPES[key].isTypeFromArgument(arg)) {
            supportedType = SUPPORTED_REF_TYPES[key];
            this.cachedArgTypes[argIndex] = {
              type: "ref",
              key
            };
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
      if (this.shouldCacheTypes && this.cachedReturnTypes[0]) {
        if (this.cachedReturnTypes[0].type === "ref") {
          supportedType = supportedType =
            SUPPORTED_REF_TYPES[this.cachedReturnTypes[0].key];
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
            this.cachedReturnTypes[0] = {
              type: "ref",
              key
            };
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
        this.cachedReturnTypes[0] = {
          type: "number"
        };
      }
    }

    // Return the result
    return response;
  };

  // Return the bound Export
  return boundExport.bind(boundExportState);
}
