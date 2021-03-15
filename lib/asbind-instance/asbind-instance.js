// Class for asbind instances

import { asbindInstantiate, asbindInstantiateSync } from "./instantiate";
import { bindImportFunction, bindExportFunction } from "./bind-function";
import { isReservedExportKey } from "./reserved-export-keys";

const SECTION_NAME = "as-bind_bindings";

// Need to traverse the importObject and bind all import functions
function traverseObjectAndRunCallbackForFunctions(baseObject, keys, callback) {
  if (!baseObject) {
    return;
  }

  Object.keys(baseObject).forEach(baseObjectKey => {
    if (typeof baseObject[baseObjectKey] === "function") {
      // Call the callback
      callback(baseObject, keys, baseObjectKey);
    } else if (typeof baseObject[baseObjectKey] === "object") {
      traverseObjectAndRunCallbackForFunctions(
        baseObject[baseObjectKey],
        [...keys, baseObjectKey],
        callback
      );
    }
  });
}

async function compileStreaming(source) {
  if (WebAssembly.compileStreaming) {
    return WebAssembly.compileStreaming(source);
  }
  source = await Promise.resolve(source);
  if (typeof Response === "object" && source instanceof Response) {
    source = await source.arrayBuffer();
  }
  return WebAssembly.compile(source);
}

function extractTypeDescriptor(module) {
  const sections = WebAssembly.Module.customSections(module, SECTION_NAME);
  const str = new TextDecoder("utf8").decode(new Uint8Array(sections[0]));
  try {
    return JSON.parse(str);
  } catch (e) {
    throw Error(`Couldn’t decode type descriptor: ${e.message}`);
  }
}

export default class AsbindInstance {
  constructor() {
    this.unboundExports = {};
    this.exports = {};
    this.importObject = {};
  }

  getTypeId(typeName) {
    if (typeName in this.typeDescriptor.typeIds) {
      return this.typeDescriptor.typeIds[typeName].id;
    }
    throw Error(`Unknown type ${JSON.stringify(typeName)}`);
  }

  getTypeSize(typeName) {
    if (typeName in this.typeDescriptor.typeIds) {
      return this.typeDescriptor.typeIds[typeName].byteSize;
    }
    throw Error(`Unknown type ${JSON.stringify(typeName)}`);
  }

  _validate() {
    if (
      !WebAssembly.Module.exports(this.module).find(exp => exp.name === "__new")
    ) {
      throw Error(
        "The AssemblyScript wasm module was not built with --exportRuntime, which is required."
      );
    }
    if (
      WebAssembly.Module.customSections(this.module, SECTION_NAME).length !== 1
    ) {
      throw new Error(
        "The AssemblyScript wasm module was not built with the as-bind transform."
      );
    }
  }

  async _instantiate(source, importObject) {
    this.module = await compileStreaming(source);
    this._validate();
    this.typeDescriptor = extractTypeDescriptor(this.module);
    // Bind our import function
    this._instantiateBindImportFunctions(importObject);

    // Instantiate the module through the loader
    this.loadedModule = await asbindInstantiate(this.module, this.importObject);

    // Bind our unbound exports
    this._instantiateBindUnboundExports();
  }

  _instantiateSync(source, importObject) {
    this.module = new WebAssembly.Module(source);
    this._validate();
    this.typeDescriptor = extractTypeDescriptor(this.module);
    this._instantiateBindImportFunctions(importObject);

    this.loadedModule = asbindInstantiateSync(this.module, this.importObject);
    this._instantiateBindUnboundExports();
  }

  _instantiateBindImportFunctions(importObject) {
    // Set our import object, as we will need it to store type caching
    this.importObject = importObject;

    // Need to traverse the importObject and bind all import functions
    traverseObjectAndRunCallbackForFunctions(
      this.importObject,
      [],
      (baseObject, keys, baseObjectKey) => {
        // Wrap the original key, but then expose a new key for the unbound import
        let importFunction = baseObject[baseObjectKey];
        baseObject[`__asbind_unbound_${baseObjectKey}`] = importFunction;
        baseObject[baseObjectKey] = bindImportFunction(
          this,
          this.importObject,
          [...keys, baseObjectKey]
        );
      }
    );
  }

  _instantiateBindUnboundExports() {
    // Wrap appropriate the appropriate export functions
    const unboundExports = this.loadedModule.exports;
    this.exports = {};

    Object.keys(unboundExports).forEach(unboundExportKey => {
      if (
        typeof unboundExports[unboundExportKey] === "function" &&
        !isReservedExportKey(unboundExportKey)
      ) {
        // Wrap the export
        this.exports[unboundExportKey] = bindExportFunction(
          this,
          unboundExportKey
        );
      } else {
        this.exports[unboundExportKey] = unboundExports[unboundExportKey];
      }
    });
  }
}
