import packageJson from "../package.json";
import AsbindInstance from "./asbind-instance";

export const AsBind = {
  // General asbind versionn
  version: packageJson.version,

  // Our APIs
  instantiate: async (source, importObject) => {
    let asbindInstance = new AsbindInstance();
    await asbindInstance._instantiate(source, importObject);
    return asbindInstance;
  }
};

const AsBindLib = AsBind;
export default AsBindLib;
