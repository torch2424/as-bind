// Wrapper around the loader instantiate
import * as loader from "assemblyscript/lib/loader";
import { AsbindImportFunction } from "./import-object";

export async function asbindInstantiate(source, importObject) {
  let wasmInstanceExports;

  // Need to traverse the importObject and replace all wrapped asbind import functions
  const traverseObjectAndWrapAsbindImports = function(baseObject) {
    if (!baseObject) {
      return;
    }

    Object.keys(baseObject).forEach(baseObjectKey => {
      if (baseObject[baseObjectKey] instanceof AsbindImportFunction) {
        let asbindImportFunction = baseObject[baseObjectKey];
        // Wrap the asbindImportFunction as a function that passes in the argument references,
        // As well as the instantiated exports of the wasm module
        baseObject[baseObjectKey] = function() {
          let functionArgumentRefs = [];
          for (let i = 0; i < arguments.length; i++) {
            functionArgumentRefs.push(arguments[i]);
          }
          asbindImportFunction.applyImportFunction(
            wasmInstanceExports,
            functionArgumentRefs
          );
        };
      } else if (typeof baseObject[baseObjectKey] === "object") {
        traverseObjectAndWrapAsbindImports(baseObject[baseObjectKey]);
      }
    });
  };
  traverseObjectAndWrapAsbindImports(importObject);

  // Use the correct loader instantiation
  // https://github.com/AssemblyScript/assemblyscript/tree/master/lib/loader#api
  if (source instanceof WebAssembly.Module) {
    wasmInstanceExports = loader.instantiate(source, importObject);
  } else if (source instanceof Uint8Array) {
    wasmInstanceExports = loader.instantiateBuffer(source, importObject);
  } else if (source instanceof Response) {
    wasmInstanceExports = await loader.instantiateStreaming(
      source,
      importObject
    );
  } else {
    throw new Error(
      "The type of value passed as the Wasm source is not supported"
    );
  }

  return wasmInstanceExports;
}
