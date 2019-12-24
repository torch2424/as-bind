import { validateExportsAndFunction } from "./validate";
import SUPPORTED_REF_TYPES from "./supported-ref-types";

export function bindImportFunction(exports, importFunction) {
  const originalImport = importFunction;

  // Cannot Validate here, as exports will not be set until after instantiation

  const boundImport = function() {
    // Get all arguments as an array
    const originalArguments = Array.prototype.slice.call(arguments);

    // Replace all supported reference types,
    // With their respective references
    const argsWithReplacedRefs = [];
    originalArguments.forEach((arg, index) => {
      // Find our supported type, if there is one
      let supportedType = undefined;
      Object.keys(SUPPORTED_REF_TYPES).some(key => {
        if (SUPPORTED_REF_TYPES[key].isTypeFromReference(exports, ref)) {
          supportedType = SUPPORTED_REF_TYPES[key];
          return true;
        }

        return false;
      });

      if (supportedType) {
        argsWithReplacedRefs.push(supportedType.getRef(exports, arg));
      } else {
        // Assume it was meant to be passed a number
        argsWithReplacedRefs.push(arg);
      }
    });

    // Call the import function
    originalImport.apply(null, argsWithReplacedRefs);

    // TODO: Returning from Import functions is not supported by asbind :(
  };

  return boundImport;
}

export function bindExportFunction(exports, exportFunctionKey) {
  const originalExport = exports[exportFunctionKey];

  validateExportsAndFunction(exports, originalExport);

  const boundExport = function() {
    // Get all arguments as an array
    const originalArguments = Array.prototype.slice.call(arguments);

    // Replace all supported reference types,
    // With their respective references
    const argumentsWithReplacedRefs = [];
    const refIndexes = [];
    originalArguments.forEach((arg, index) => {
      // WebAssembly supports numbers
      // If a number is being passed, it does not need a reference
      if (typeof arg === "number") {
        argumentsWithReplacedRefs.push(arg);
        return;
      }

      // A supported reference type is being passed,
      // Find our supported type
      let supportedType = undefined;
      Object.keys(SUPPORTED_REF_TYPES).some(key => {
        if (SUPPORTED_REF_TYPES[key].isTypeFromArgument(arg)) {
          supportedType = SUPPORTED_REF_TYPES[key];
          return true;
        }

        return false;
      });

      if (!supportedType) {
        throw new Error(
          `The argument, ${arg}, is not a supported type by asbind`
        );
      }

      argumentsWithReplacedRefs.push(supportedType.getRef(exports, arg));
      refIndexes.push(index);
    });

    // Call the Export
    const exportFunctionResponse = originalExport.apply(
      null,
      argumentsWithRefs
    );

    // Release all references
    refIndexes.forEach(refIndex => {
      exports.__release(argumentsWithRefs[i]);
    });

    // Get the response item from the returned reference
    let response = undefined;
    if (exportFunctionResponse !== undefined) {
      // Find our supported type
      let supportedType = undefined;
      Object.keys(SUPPORTED_REF_TYPES).some(key => {
        if (
          SUPPORTED_REF_TYPES[key].isTypeFromReference(
            exports,
            exportFunctionResponse
          )
        ) {
          supportedType = SUPPORTED_REF_TYPES[key];
          return true;
        }

        return false;
      });

      if (supportedType) {
        response = supportedType.getValueFromRef(
          exports,
          exportFunctionResponse
        );
      } else if (typeof exportFunctionResponse === "number") {
        // TODO: Find a good way to handle conflicts here?
        // Incase the value returned just HAPPENS to match a supported type value
        // Let's assume the exported function returns a number
        response = exportFunctionResponse;
      }
    }

    // Return the result
    return response;
  };

  // Return the bound Export
  return boundExport;
}
