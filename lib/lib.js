export { version } from "../package.json";
import AsbindInstance from "./asbind-instance/asbind-instance";
export { converters } from "./asbind-instance/type-converters";

export async function instantiate(source, importObject) {
  let asbindInstance = new AsbindInstance();
  await asbindInstance._instantiate(source, importObject);
  return asbindInstance;
}

export function instantiateSync(source, importObject) {
  let asbindInstance = new AsbindInstance();
  asbindInstance._instantiateSync(source, importObject);
  return asbindInstance;
}
