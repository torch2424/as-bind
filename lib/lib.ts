import { version as packVersion } from "../package.json";
import AsbindInstance from "./asbind-instance";

import { WebAssemblyModuleStreaming, WebAssemblyModuleSync } from "./types";

// BREAKING CHANGE!!!
// export { converters } from "./asbind-instance/type-converters";

export const version: string = packVersion;

export async function instantiate(
  source: WebAssemblyModuleStreaming,
  importObject: WebAssembly.Imports
) {
  let asbindInstance = new AsbindInstance();
  await asbindInstance._instantiate(source, importObject);
  return asbindInstance;
}

export function instantiateSync(
  source: WebAssemblyModuleSync,
  importObject: WebAssembly.Imports
) {
  let asbindInstance = new AsbindInstance();
  asbindInstance._instantiateSync(source, importObject);
  return asbindInstance;
}
