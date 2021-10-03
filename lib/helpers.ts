import { D_Intstance, WebAssemblyModuleStreaming } from "./types";
import {
  TYPES,
  D_Value,
  D_ClassConstructor,
  D_ClassInstance,
  typeHandler
} from "./types";
import { TypeHandler } from "./typeHandler";

export const notImplemented = (val: any, def: D_Value) => {
  throw new Error(
    `Handeling type ${TYPES[def.type] ?? def.type} is currently not supported!`
  );
};
export const noop: typeHandler = {
  as2js: (v: number) => v,
  js2as: (v: any) => v.__ptr ?? v
};
export function classWrapper(
  self: TypeHandler,
  klass: any,
  ptr: number,
  cc: D_ClassConstructor,
  ci: D_ClassInstance = null
) {
  const baseWraped = klass.wrap(ptr);
  const myPath = [...self.currentPath];

  // Save my generics
  const myGenerics = {};
  for (let i = 0; i < cc.generics; i++) {
    myGenerics[`__GEN:${cc.name}:${i}`] = ci.generics[i];
  }

  const map = new Map<string, Function>();

  const wrapedInstance = new Proxy(baseWraped, {
    get: (_, prop: string) => {
      if (map.has(prop)) return map.get(prop);

      this.currentPath = [...myPath, prop];

      const wrapedValue = this.handleTypeValue(
        baseWraped[prop],
        cc.content[prop].type,
        "as2js"
      );

      if (typeof wrapedValue === "function") {
        map.set(prop, wrapedValue);
      }

      return wrapedValue;
    },
    set: (_, prop: string, newValue: any) => {
      if (cc.content[prop].set && isSettableType(cc.content[prop].type)) {
        baseWraped[prop] = this.handleTypeValue(
          newValue,
          cc.content[prop],
          "js2as"
        );
        return true;
      }

      return false;
    }
  });

  return wrapedInstance;
}
// Is type NOT depending on the Webassembly.Memory?
export function isNonRefType(type: unknown) {
  if (
    typeof type === "string" ||
    typeof type === "number" ||
    typeof type === "boolean" ||
    typeof type === "bigint"
  )
    return false;
  if (type instanceof ArrayBuffer) return false;

  return true;
}
const settableType = [
  TYPES.ARRAYBUFFER,
  TYPES.BOOLEAN,
  TYPES.CLASS_INSTANCE,
  TYPES.NOOP,
  TYPES.NUMBER,
  TYPES.STRING,
  TYPES.TYPEDARRAY
];
export function isSettableType(def: D_Value) {
  return settableType.includes(def.type);
}

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
