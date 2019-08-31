export function getLoaderReferenceForArgument(wasmExports, arg) {
  return wasmExports.__retain(wasmExports.__allocString(arg));
}

export function getResponseFromLoaderReference(wasmExports, responseRef) {
  return wasmExports.__getString(responseRef);
}
