// Class for asbind instances

import { asbindInstantiate, asbindInstantiateSync } from "./instantiate";
import { bindImportFunction, bindExportFunction } from "./bind-function";
import { isReservedExportKey } from "./reserved-export-keys";

const SECTION_NAME = "as-bind_bindings";

// Need to traverse the importObject and bind all import functions
function traverseObjectAndRunCallback(obj, callback, keys = [], baseObj = obj) {
  if (!obj) {
    return;
  }
  for (const key of Object.keys(obj)) {
    if (obj[key] && Object.getPrototypeOf(obj[key]) === Object.prototype) {
      traverseObjectAndRunCallback(obj[key], callback, [...keys, key], baseObj);
      continue;
    }
    callback(obj[key], [...keys, key], baseObj, key, obj);
  }
}

async function compileStreaming(source) {
  source = await Promise.resolve(source);
  if (typeof Response === "object" && source instanceof Response) {
    if (WebAssembly.compileStreaming) {
      return WebAssembly.compileStreaming(source);
    }
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
    this.importObject = importObject;
    this.module = await compileStreaming(source);

    this._validate();
    this.typeDescriptor = extractTypeDescriptor(this.module);
    this._instantiateBindImportFunctions();
    // Instantiate the module through the loader
    this.loadedModule = await asbindInstantiate(this.module, this.importObject);
    this._instantiateBindUnboundExports();
  }

  _instantiateSync(source, importObject) {
    this.importObject = importObject;
    this.module = new WebAssembly.Module(source);

    this._validate();
    this.typeDescriptor = extractTypeDescriptor(this.module);
    this._instantiateBindImportFunctions(importObject);
    this.loadedModule = asbindInstantiateSync(this.module, this.importObject);
    this._instantiateBindUnboundExports();
  }

  _instantiateBindImportFunctions(importObject) {
    // Need to traverse the importObject and bind all import functions
    traverseObjectAndRunCallback(
      this.importObject,
      (importedFunction, keys, importObject, currentKey, currentObj) => {
        if (typeof importedFunction === "function") {
          // Save original function
          // TODO: Maybe use symbols here instead
          currentObj[`__asbind_unbound_${currentKey}`] = importedFunction;
          currentObj[currentKey] = bindImportFunction(
            this,
            importedFunction,
            keys
          );
        }
      }
    );
  }

  _instantiateBindUnboundExports() {
    // Wrap appropriate the appropriate export functions
    const unboundExports = this.loadedModule.exports;
    this.exports = {};

    traverseObjectAndRunCallback(
      unboundExports,
      (exportedValue, keys, importObject, currentKey, currentObj) => {
        if (
          typeof exportedValue === "function" &&
          !isReservedExportKey(currentKey)
        ) {
          // Wrap the export
          this.exports[currentKey] = bindExportFunction(
            this,
            exportedValue,
            currentKey
          );
        } else {
          this.exports[currentKey] = exportedValue;
        }
      }
    );
  }
}
