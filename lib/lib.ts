import { version as packVersion } from "../package.json";
import AsbindInstance from "./asbind-instance/asbind-instance";
export { converters } from "./asbind-instance/type-converters";

import { WebAssemblyModuleStreaming, WebAssemblyModuleSync } from "./types";

export const version: string = packVersion;

export async function instantiate<EXPORTS = any>(
  source: WebAssemblyModuleStreaming,
  importObject: WebAssembly.Imports
) {
  let asbindInstance = new AsbindInstance<EXPORTS>();
  await asbindInstance._instantiate(source, importObject);
  return asbindInstance;
}

export function instantiateSync<EXPORTS = any>(
  source: WebAssemblyModuleSync,
  importObject: WebAssembly.Imports
) {
  let asbindInstance = new AsbindInstance<EXPORTS>();
  asbindInstance._instantiateSync(source, importObject);
  return asbindInstance;
}
