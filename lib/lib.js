import packageJson from "../package.json";
import AsbindInstance from "./asbind-instance";

const asbind = {
  // General asbind versionn
  version: packageJson.version,

  // Our APIs
  instantiate: async (source, importObject) => {
    let asbindInstance = new AsbindInstance();
    await asbindInstance.instantiate(source, importObject);
    return asbindInstance;
  }
};

export default asbind;
