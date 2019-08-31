import {
  getLoaderReferenceForArgument,
  getResponseFromLoaderReference
} from './refs';
import {
  validateExportsAndFunction
} from './validate'

export default function asbindCall(wasmExports, wasmExportFunction) {

  console.log(wasmExports, wasmExportFunction)

  // Do some validation
  validateExportsAndFunction(wasmExports, wasmExportFunction);
  if (arguments.length <= 2) {
    throw new Error('Must provide arguments to load and pass to the function');
  }

  const argumentRefs = [];
  for (let i = 2; i < arguments.length; i++) {
    const arg = arguments[i];
    const ref = getLoaderReferenceForArgument(wasmExports, arg);
    argumentRefs.push(ref);
  }

  // Call the Export
  const responseRef = wasmExportFunction.apply(null, argumentRefs);

  // Release all the references
  for (let i = 0; i < argumentRefs.length; i++) {
    wasmExports.__release(argumentRefs[i]);
  }

  // Get the response item from the returned reference
  let response = undefined;
  if (responseRef) {
    response = getResponseFromLoaderReference(wasmExports, responseRef);
  }

  // Return the result
  return response;
}
