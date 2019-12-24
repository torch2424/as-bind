// Wrapper around the loader instantiate
import * as loader from "assemblyscript/lib/loader";

export async function asbindInstantiate(source, importObject) {
  let wasmInstanceExports;

  const wasSourceAPromise = source instanceof Promise;

  if (wasSourceAPromise) {
    source = await source;
  }

  // Use the correct loader instantiation
  // https://github.com/AssemblyScript/assemblyscript/tree/master/lib/loader#api
  if (wasSourceAPromise) {
    wasmInstanceExports = await loader.instantiateStreaming(
      source,
      importObject
    );
  } else {
    wasmInstanceExports = await loader.instantiate(source, importObject);
  }

  return wasmInstanceExports;
}
