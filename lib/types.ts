import { ASUtil } from "@assemblyscript/loader";

export type WebAssemblyModuleStreaming =
  | WebAssemblyModuleSync
  | Response
  | PromiseLike<Response | WebAssemblyModuleSync>;
export type WebAssemblyModuleSync = BufferSource;

export interface TypeDefFn {
  returnType: string;
  parameters: string[];
}

export interface TypeDef {
  typeIds: Record<string, { id: number; byteSize: number }>;
  importedFunctions: Record<string, Record<string, TypeDefFn>>;
  exportedFunctions: Record<string, TypeDefFn>;
}

export type WebAssemblyLoaderResult<T = Record<string, never>> =
  WebAssembly.WebAssemblyInstantiatedSource & { exports: T & ASUtil };
