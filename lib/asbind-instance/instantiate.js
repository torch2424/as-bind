// Wrapper around the loader instantiate
import loader from "@assemblyscript/loader";

export async function asbindInstantiate(module, importObject) {
  return loader.instantiate(module, importObject);
}

export function asbindInstantiateSync(module, importObject) {
  return loader.instantiateSync(module, importObject);
}
