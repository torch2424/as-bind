// Wrapper around the loader instantiate
import loader from "@assemblyscript/loader";

import {WebAssemblyLoaderResult} from "../types";

export async function asbindInstantiate(
  module: WebAssembly.Module,
  importObject: WebAssembly.Imports
): Promise<WebAssemblyLoaderResult> {
  return loader.instantiate(module, importObject);
}

export function asbindInstantiateSync(
  module: WebAssembly.Module,
  importObject: WebAssembly.Imports
): WebAssemblyLoaderResult {
  return loader.instantiateSync(module, importObject);
}
