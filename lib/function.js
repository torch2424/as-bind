import {
  validateExportsAndFunction
} from './validate';
import SUPPORTED_TYPES from './supported-types';

export function asbindCall(wasmExports, wasmExportFunction) {
  
  let functionArguments = [];
  for (let i = 2; i < arguments.length; i++) {
    functionArguments.push(arguments[i]);
  }

  return asbindApply(wasmExports, wasmExportFunction, functionArguments);
}

export function asbindApply(wasmExports, wasmExportFunction, functionArguments) {

  // Do some validation
  validateExportsAndFunction(wasmExports, wasmExportFunction);
  if (functionArguments.length < 1) {
    throw new Error('Must provide arguments to load and pass to the function');
  }

  const argumentRefs = [];
  functionArguments.forEach(arg => {
    
    // Find our supported type
    let supportedType = undefined;
    Object.keys(SUPPORTED_TYPES).some(key => {
      if (SUPPORTED_TYPES[key].isTypeFromArgument(arg)) {
        supportedType = SUPPORTED_TYPES[key];
        return true;
      }

      return false;
    });

    if (!supportedType) {
      throw new Error(`The argument, ${arg}, is not a supported type by asbind`);
    }
    
    argumentRefs.push(supportedType.getRef(wasmExports, arg));
  })

  // Call the Export
  const responseRef = wasmExportFunction.apply(null, argumentRefs);

  // Release all the references
  for (let i = 0; i < argumentRefs.length; i++) {
    wasmExports.__release(argumentRefs[i]);
  }

  // Get the response item from the returned reference
  let response = undefined;
  if (responseRef) {

    // Find our supported type
    let supportedType = undefined;
    Object.keys(SUPPORTED_TYPES).some(key => {
      if (SUPPORTED_TYPES[key].isTypeFromReference(wasmExports, responseRef)) {
        supportedType = SUPPORTED_TYPES[key];
        return true;
      }

      return false;
    });

    if (!supportedType) {
      throw new Error(`The reference, ${responseRef}, is not a supported type by asbind`);
    }
    response = supportedType.getValueFromRef(wasmExports, responseRef);
  }

  // Return the result
  return response;
}
