import { version as packVersion } from "../package.json";
import AsbindInstance from "./asbind-instance/asbind-instance";
export { converters } from "./asbind-instance/type-converters";

import { WebAssemblyModuleStreaming, WebAssemblyModuleSync } from "./types";

export const version: string = packVersion;

export async function instantiate<
  Imports extends WebAssembly.Imports,
  Exports extends {}
>(source: WebAssemblyModuleStreaming, importObject: Imports) {
  const asbindInstance = new AsbindInstance<Imports, Exports>();
  await asbindInstance._instantiate(source, importObject);
  return asbindInstance;
}

export function instantiateSync<
  Imports extends WebAssembly.Imports,
  Exports extends {}
>(source: WebAssemblyModuleSync, importObject: Imports) {
  const asbindInstance = new AsbindInstance<Imports, Exports>();
  asbindInstance._instantiateSync(source, importObject);
  return asbindInstance;
}
