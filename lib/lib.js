import { asbindInstantiate } from "./instantiate";
import { asbindCall, asbindApply } from "./function";
import { asbindWrapImportObjectFunction } from "./import-object";
import packageJson from "../package.json";

const asbind = {
  // General asbind versionn
  version: packageJson.version,

  // Our APIs
  instantiate: asbindInstantiate,
  wrapImportObjectFunction: asbindWrapImportObjectFunction,
  call: asbindCall,
  apply: asbindApply
};

export default asbind;
