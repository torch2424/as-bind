import { ASUtil } from "@assemblyscript/loader";

type ClassObject = (new (...args: any[]) => number) & {
  wrap: (ptr: number) => any;
};

// Near noop if value has a pointer attached use that else pass through
const noop = (t, v) => v?.__ptr ?? v;

export enum TYPES {
  NOOP = "no",
  NUMBER = "num",
  CALLBACK_FROM_ASSEMBLY_SCRIPT = "cb:a",
  CLASS = "c",
  STRING = "s",
  ARRAYBUFFER = "ab",
  TYPEDARRAY = "ta",
  NAMESPACE = "ns"
}

const noopHandler = {
  as2js: noop,
  js2as: noop
};
const typeHandlers: Record<
  string,
  {
    as2js: (t: WrappingHandler, value: any, def: any, ...args: any) => any;
    js2as: (t: WrappingHandler, value: any, def: any, ...args: any) => any;
  }
> = {
  [TYPES.NOOP]: noopHandler,
  [TYPES.NUMBER]: noopHandler,
  // TODO: handle classname something like "namespace.sub.classname"
  [TYPES.CLASS]: {
    js2as: (_, value) => value.__instance,
    as2js: (h, value, className) => h.exports[className].wrap(value)
  },
  [TYPES.STRING]: {
    as2js: (t, v) => t.util.__getString(v),
    js2as: (t, v) => t.util.__newString(v)
  },
  [TYPES.ARRAYBUFFER]: {
    as2js: (t, v) => t.util.__getArrayBuffer(v),
    js2as: (t, v) => t.util.__newArrayBuffer(v)
  },
  [TYPES.TYPEDARRAY]: {
    as2js: (t, v, def, type) => t.util[`__get${type}View`](v),
    js2as: (t, v, def, type) => t.util.__newArray(def.id, v)
  }
  // Add Array; StaticArray from type-converters
  // Array will get a Proxy return value to be ref only.
  // Static Array pointers will not change so there can be some thing done more easy
};

// Only Number types are AS-Primitives
const primitiveValues = ["bigint", "boolean", "number"];

class WrappingHandler {
  gcRegestry =
    FinalizationRegistry &&
    new FinalizationRegistry((ptr: number) => this.util.__unpin(ptr));

  public GC_pinValue(ptr: number, value: any) {
    this.util.__pin(ptr);
    // Strings are pin only
    if (this.gcRegestry && typeof value !== "string") {
      this.gcRegestry.register(value, ptr, value);
    }
  }

  public GC_unpinValue(ptr: number, value: any) {
    this.util.__unpin(ptr);
    // Strings are pin only
    if (this.gcRegestry && typeof value !== "string") {
      this.gcRegestry.unregister(value);
    }
  }

  public isPrimitive(value: any) {
    return primitiveValues.includes(typeof value);
  }

  public wrapASFunction(fn: Function, def: FunctionDefinition): Function {
    // Return the wraped function
    return (...args: any[]) => {
      const newArgs: any[] = args.map((value, index) => {
        const wrapedValue = this.wrapValueJsToAs(value, def.args[index]);

        if (!this.isPrimitive(wrapedValue)) {
          this.GC_pinValue(value, wrapedValue);
        }

        return wrapedValue;
      });

      const returnValue = fn(...newArgs);

      // Unpin values
      args.forEach((ptr, index) => {
        if (!this.isPrimitive(newArgs[index])) {
          this.GC_unpinValue(ptr, newArgs[index]);
        }
      });

      return this.wrapValueAsToJs(returnValue, def.ret);
    };
  }

  public classWrapper(obj: ClassObject, def: ClassDefinition, ptr: number) {
    const instance = obj.wrap(ptr);
    const wrapedInstance = this.wrapObject(instance, def.members, true);

    return wrapedInstance;
  }

  public wrapValueJsToAs(obj: any, def: TypeDefinition) {
    const [type, ...args] = def.type.split(":");

    return this.getTypeHandler(type).js2as(this, obj, def, ...args);
  }
  public wrapValueAsToJs(obj: any, def: TypeDefinition) {
    const [type, ...args] = def.type.split(":");

    return this.getTypeHandler(type).as2js(this, obj, def, ...args);
  }
  warned = new Set<string>();
  public getTypeHandler(type: string) {
    const handler = typeHandlers[type];

    if (!handler) {
      if (this.warned.has(type)) {
        console.warn(
          `No converter for ${JSON.stringify(
            type
          )}, using pass-through\nDo you use the latest version of as-bind?`
        );
        this.warned.add(type);
      }
      return typeHandlers.noop;
    }

    return handler;
  }

  public wrapClass(obj: ClassObject, def: ClassDefinition) {
    const newConstructor = new Proxy(obj, {
      construct: (target, args) => {
        const newArgs = args.map((value, index) => {
          const newValue = this.wrapValueJsToAs(value, def.constructor[index]);

          if (!this.isPrimitive(newValue)) {
            this.GC_pinValue(value, newValue);
          }
        });

        const ptr = new target(...newArgs);

        args.forEach((value, index) => {
          if (!this.isPrimitive(newArgs[index])) {
            this.GC_unpinValue(value, newArgs[index]);
          }
        });

        return this.classWrapper(obj, def, ptr);
      },
      get: (_, prop) => {
        if (prop === "wrap") {
          return ptr => this.classWrapper(obj, def, ptr);
        }

        return undefined;
      }
    });
    return newConstructor;
  }
  constructor(public util: ASUtil) {}

  exports: ASUtil;

  wrapObject(obj: Record<string, any>, def: ObjectDefiniton, isClass = false) {
    const _map = new Map<string, any>();

    const wrapedObject = new Proxy(obj, {
      get: (target, prop: string) => {
        if (prop === "__collect" && isClass) {
          return () => this.gcRegestry.unregister(wrapedObject);
        }

        if (prop === "__instance" && isClass) {
          return () => obj;
        }

        if (!def[prop]) return target[prop];
        if (_map.has(prop)) return _map.get(prop);

        if (def[prop].kind === "obj") {
          const wrapedObj = this.wrapObject(target[prop], def[prop] as any);

          _map.set(prop, wrapedObj);

          return wrapedObj;
        } else if (def[prop].kind === "fn") {
          const wrapedFn = this.wrapASFunction(target[prop], def[prop] as any);

          _map.set(prop, wrapedFn);

          return wrapedFn;
        } else {
          return this.wrapValueJsToAs(target[prop], def[prop]);
        }
      }
      // TODO: set value.
    });

    return wrapedObject;
  }
}

type ObjectDefiniton = Record<string, TypeDefinition>;
type NamespaceDefinition = ObjectDefiniton;

type TypeDefinition = ClosureDefiniton | NoopDefiniton | NumberDefiniton;
interface ClosureDefiniton extends FunctionDefinition {
  type: `asCB`;
  kind: string;
}

interface NoopDefiniton {
  type: "noop";
  kind: string;
}

interface NumberDefiniton {
  type: "number";
  kind: string;
}

interface ClassDefinition {
  constructor: TypeDefinition[];
  members: ObjectDefiniton;
}
interface FunctionDefinition {
  args: TypeDefinition[];
  ret: TypeDefinition;
}
