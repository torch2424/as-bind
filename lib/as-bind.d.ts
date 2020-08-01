import { instantiate, instantiateSync } from "@assemblyscript/loader";

export interface AsBind {
  // General asbind versionn
  version: number;

  // Our APIs
  instantiate: typeof instantiate;

  instantiateSync: typeof instantiateSync;
}

export type AsBindLib = AsBind;
