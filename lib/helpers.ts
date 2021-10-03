import { D_Intstance, WebAssemblyModuleStreaming } from "./types";

// Runtime Export keys we don't want to bind to
export const RESERVED_RUNTIME_EXPORT_KEYS = [
  /__new(String|Array)/,
  /__get(String|Function|Array)/,
  /__getArray(Buffer|View)?/,
  /__get(Ui|I)nt(8|16|32|64)Array(View)?/,
  /__getUint8ClampedArray(View)?/,
  /__getFloat(32|64|)Array(View)?/,
  "__new",
  "__renew",
  "__pin",
  "__unpin",
  "__instanceof",
  "__collect",
  "__rtti_base",
  "__alloc",
  "__allocArray",
  "__allocString"
];

export function isReservedExportKey(key: string) {
  return RESERVED_RUNTIME_EXPORT_KEYS.some(reservedKey => {
    if (typeof reservedKey === "string") {
      return reservedKey === key;
    }
    return reservedKey.test(key);
  });
}

export const SECTION_NAME = "as-bind_bindings";

export async function compileStreaming(source: WebAssemblyModuleStreaming) {
  source = await Promise.resolve(source);
  // Response in allways defined see https://caniuse.com/mdn-api_response
  if (source instanceof Response) {
    // 2. check for https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/instantiateStreaming
    // Or see http203 https://www.youtube.com/watch?v=n6hIa-fPx0M
    if (
      WebAssembly.compileStreaming &&
      source.headers.get("content-type") === "application/wasm"
    ) {
      return WebAssembly.compileStreaming(source);
    }
    source = await source.arrayBuffer();
  }

  return WebAssembly.compile(source);
}

export function extractTypeDescriptor(module: WebAssembly.Module): D_Intstance {
  const sections = WebAssembly.Module.customSections(module, SECTION_NAME);
  const str = new TextDecoder("utf8").decode(new Uint8Array(sections[0]));
  try {
    return JSON.parse(str);
  } catch (e) {
    throw Error(`Couldn’t decode type descriptor: ${e.message}`);
  }
}
