// Class for asbind instances

import { asbindInstantiate, asbindInstantiateSync } from "./instantiate";
import { bindImportFunction, bindExportFunction } from "./bind-function";
import { isReservedExportKey } from "./reserved-export-keys";

const SECTION_NAME = "as-bind_bindings";

// Basically a deep-copy, but can be limited in levels.
function copyObject(obj, { depth = Number.POSITIVE_INFINITY } = {}) {
  if (depth <= 0 || !obj || typeof obj !== "object") {
    return obj;
  }
  return Object.fromEntries(
    Object.entries(obj).map(([key, val]) => [
      key,
      copyObject(val, { depth: depth - 1 })
    ])
  );
}

async function compileStreaming(source) {
  source = await Promise.resolve(source);
  if (typeof Response !== "undefined" && source instanceof Response) {
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
    this.module = await compileStreaming(source);

    this._validate();
    this.typeDescriptor = extractTypeDescriptor(this.module);
    this._instantiateBindImportFunctions(importObject);
    // Instantiate the module through the loader
    this.loadedModule = await asbindInstantiate(this.module, this.importObject);
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
    this.importObject = copyObject(importObject, { depth: 2 });

    for (const [moduleName, moduleDescriptor] of Object.entries(
      this.typeDescriptor.importedFunctions
    )) {
      for (const [importedFunctionName, descriptor] of Object.entries(
        moduleDescriptor
      )) {
        this.importObject[moduleName][
          `__asbind_unbound_${importedFunctionName}`
        ] = importObject[moduleName][importedFunctionName];
        this.importObject[moduleName][
          importedFunctionName
        ] = bindImportFunction(
          this,
          importObject[moduleName][importedFunctionName],
          descriptor
        );
      }
    }
  }

  _instantiateBindUnboundExports() {
    // Wrap appropriate the appropriate export functions
    const unboundExports = this.loadedModule.exports;
    this.exports = copyObject(unboundExports, { depth: 1 });

    for (const [exportedFunctionName, descriptor] of Object.entries(
      this.typeDescriptor.exportedFunctions
    )) {
      this.exports[exportedFunctionName] = bindExportFunction(
        this,
        unboundExports[exportedFunctionName],
        descriptor
      );
    }
  }
}
