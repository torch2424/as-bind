// Wrapper around the loader instantiate
import * as loader from "assemblyscript/lib/loader";

export async function asbindInstantiate(source, importObject) {
  let wasmInstance;

  const wasSourceAPromise = source instanceof Promise;

  if (wasSourceAPromise) {
    source = await source;
  }

  // Use the correct loader instantiation
  // https://github.com/AssemblyScript/assemblyscript/tree/master/lib/loader#api
  if (wasSourceAPromise) {
    wasmInstance = await loader.instantiateStreaming(source, importObject);
  } else {
    wasmInstance = await loader.instantiate(source, importObject);
  }

  return wasmInstance.exports;
}

export function asbindInstantiateSync(source, importObject) {
  let wasmInstance = loader.instantiateSync(source, importObject);
  return wasmInstance.exports;
}
