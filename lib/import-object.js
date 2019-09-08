import SUPPORTED_TYPES from "./supported-types";

// Use instance of to scan the importObject for Asbinded Import functions,
// That are then replaced with the actual function that wraps around the import and does the appropriate stuff
export class AsbindImportFunction {
  constructor(importFunction) {
    this.importFunction = importFunction;
  }

  applyImportFunction(wasmExports, functionArgumentRefs) {
    if (!wasmExports) {
      throw new Error("Could not access the instantiated Wasm Export");
    }

    // Get the types from the passed references in AS
    const functionArguments = [];
    functionArgumentRefs.forEach(ref => {
      // Find our supported type
      let supportedType = undefined;
      Object.keys(SUPPORTED_TYPES).some(key => {
        if (SUPPORTED_TYPES[key].isTypeFromReference(wasmExports, ref)) {
          supportedType = SUPPORTED_TYPES[key];
          return true;
        }

        return false;
      });

      if (!supportedType) {
        throw new Error(
          `The reference, ${ref}, passed to the import object function is not a supported type by asbind`
        );
      }
      functionArguments.push(supportedType.getValueFromRef(wasmExports, ref));
    });

    // Call the import function
    this.importFunction.apply(null, functionArguments);

    // TODO: Returning from Import functions is not supported by asbind :(
  }
}

// Fuction that takes in an importFunction to be wrapped,
// And the type parameters, and return parameter of the function
export function asbindWrapImportObjectFunction(importFunction) {
  // Return our AsbindImportFunction
  return new AsbindImportFunction(importFunction);
}
