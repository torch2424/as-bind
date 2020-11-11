import packageJson from "../package.json";
import AsbindInstance from "./asbind-instance/asbind-instance";
import { RETURN_TYPES } from "./asbind-instance/supported-ref-types";

export const AsBind = {
  // General asbind version
  version: packageJson.version,

  // Constants
  RETURN_TYPES: RETURN_TYPES,

  // Our APIs
  instantiate: async (source, importObject) => {
    let asbindInstance = new AsbindInstance();
    await asbindInstance._instantiate(source, importObject);
    return asbindInstance;
  },

  instantiateSync: (source, importObject) => {
    let asbindInstance = new AsbindInstance();
    asbindInstance._instantiateSync(source, importObject);
    return asbindInstance;
  }
};

const AsBindLib = AsBind;
export default AsBindLib;
