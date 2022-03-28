// Class for asbind instances
import {
  instantiate as loaderInstantiate,
  instantiateSync as loaderInstantiateSync
} from "@assemblyscript/loader";

import { ASUtil } from "@assemblyscript/loader";
import { TypeHandler } from "./typeHandler";

import {
  WebAssemblyModuleStreaming,
  WebAssemblyModuleSync,
  WebAssemblyLoaderResult,
  D_Intstance
} from "./types";

import { short as short_version } from "version:";
import {
  SECTION_NAME,
  compileStreaming,
  extractTypeDescriptor
} from "./helpers";

export default class AsbindInstance {
  exports: Record<string, never> | ASUtil = {};
  importObject: WebAssembly.Imports = {};
  typeDescriptor: D_Intstance;
  module: WebAssembly.Module;
  loadedModule: WebAssemblyLoaderResult;

  getTypeId(typeName: string) {
    if (typeName in this.typeDescriptor.typeIds) {
      return this.typeDescriptor.typeIds[typeName].id;
    }
    throw Error(`Unknown type ${JSON.stringify(typeName)}`);
  }

  getTypeSize(typeName: string) {
    if (typeName in this.typeDescriptor.typeIds) {
      return this.typeDescriptor.typeIds[typeName].byteSize;
    }
    throw Error(`Unknown type ${JSON.stringify(typeName)}`);
  }

  private _validate() {
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

  private _validateTypeDef() {
    if (this.typeDescriptor.version !== short_version) {
      throw new Error(
        "The Module was build with a non compatable version of as-bind. Use the same version for build ans instanitate"
      );
    }
  }

  _instantiateSync(
    source: WebAssemblyModuleSync,
    importObject: WebAssembly.Imports
  ) {
    this.module = new WebAssembly.Module(source);

    this._validate();
    this.typeDescriptor = extractTypeDescriptor(this.module);
    this._validateTypeDef();

    const handler = new TypeHandler(this);

    this.importObject = handler.handleTypeValue(
      importObject,
      this.typeDescriptor.import,
      "js2as"
    );

    this.loadedModule = loaderInstantiateSync(this.module, this.importObject);
    this.exports = handler.handleTypeValue(
      this.loadedModule.exports,
      this.typeDescriptor.export,
      "as2js"
    );
  }

  async _instantiate(
    source: WebAssemblyModuleStreaming,
    importObject: WebAssembly.Imports
  ) {
    this.module = await compileStreaming(source);

    this._validate();
    this.typeDescriptor = extractTypeDescriptor(this.module);
    this._validateTypeDef();

    const handler = new TypeHandler(this);

    this.importObject = handler.handleTypeValue(
      importObject,
      this.typeDescriptor.import,
      "js2as"
    );

    this.loadedModule = await loaderInstantiate(this.module, this.importObject);
    this.exports = handler.handleTypeValue(
      this.loadedModule.exports,
      this.typeDescriptor.export,
      "as2js"
    );
  }
}
