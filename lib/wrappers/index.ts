import { ASUtil } from "@assemblyscript/loader";

type ClassObject = (new (...args: any[]) => number) & {
  wrap: (ptr: number) => any;
};

const noop = (t, v) => v;

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
  noop: noopHandler,
  number: noopHandler,
  asCB: {
    as2js: (h, value: number, def: ClosureDefiniton, hash: string) => {
      const fn = (...args) => {
        const newArgs = h.wrapFunctionArguments(args, def.args);

        h.pinFunctionArgs(newArgs, def.args);

        const ret = h.wrapValueAsToJs(
          h.util[`__call__${hash}`](value, ...newArgs),
          def.ret
        );

        h.unpinFunctionArgs(newArgs, def.args);

        return ret;
      };

      h.util.__pin(value);
      h.gcRegestry.register(fn, value, fn);

      fn.ptr = value;
      fn.__collect = () => {
        h.gcRegestry.unregister(fn);
        h.util.__unpin(value);
      };

      return fn;
    },
    js2as: (h, v) => v.ptr
  },
  class: {
    js2as: (_, value) => value.__instance,
    as2js: (h, value, className) => h.exports[className].wrap(value)
  },
  string: {
    as2js: (t, v) => t.util.__getString(v),
    js2as: (t, v) => t.util.__newString(v)
  },
  buffer: {
    as2js: (t, v) => t.util.__getArrayBuffer(v),
    js2as: (t, v) => t.util.__newArrayBuffer(v)
  },
  typedArray: {
    as2js: (t, v, def, type) => t.util[`__get${type}View`](v),
    js2as: (t, v, def, type) => t.util.__newArray(def.id, v)
  }
  // Add Array; StaticArray from type-converters
  // Array will get a Proxy return value to be ref only.
  // Static Array pointers will not change so there can be some thing done more easy
};

class WrappingHandler {
  gcRegestry = FinalizationRegistry
    ? new FinalizationRegistry((ptr: number) => this.util.__unpin(ptr))
    : { register(...args: any[]) {}, unregister(inst: any) {} };

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
          const wrapedFn = this.wrapFunction(target[prop], def[prop] as any);

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
  wrapFunction(obj: Function, def: FunctionDefinition) {
    return (...args) => {
      this.pinFunctionArgs(args, def.args);

      const ret = this.wrapValueAsToJs(
        obj(...this.wrapFunctionArguments(args, def.args)),
        def.ret
      );

      this.unpinFunctionArgs(args, def.args);

      return ret;
    };
  }
  wrapFunctionArguments(obj: any[], def: TypeDefinition[]) {
    return obj.map((v, i) => this.wrapValueJsToAs(v, def[i]));
  }
  pinFunctionArgs(obj: any[], def: TypeDefinition[]) {
    obj.forEach((arg, i) => {
      if (def[i].type !== "number") {
        this.util.__pin(arg);
      }
    });
  }
  unpinFunctionArgs(obj: any[], def: TypeDefinition[]) {
    obj.forEach((arg, i) => {
      if (def[i].type !== "number") {
        this.util.__unpin(arg);
      }
    });
  }
  wrapValueJsToAs(obj: any, def: TypeDefinition) {
    const [type, ...args] = def.type.split(":");

    return this.getTypeHandler(type).js2as(this, obj, def, ...args);
  }
  wrapValueAsToJs(obj: any, def: TypeDefinition) {
    const [type, ...args] = def.type.split(":");

    return this.getTypeHandler(type).as2js(this, obj, def, ...args);
  }
  warned = new Set<string>();
  getTypeHandler(type: string) {
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
  classWrapper(obj: ClassObject, def: ClassDefinition, ptr: number) {
    this.util.__pin(ptr);
    const instance = obj.wrap(ptr);

    const wrapedInstance = this.wrapObject(instance, def.members, true);

    this.gcRegestry.register(wrapedInstance, ptr, wrapedInstance);

    return wrapedInstance;
  }
  wrapClass(obj: ClassObject, def: ClassDefinition) {
    const newConstructor = new Proxy(obj, {
      construct: (target, args) => {
        this.pinFunctionArgs(args, def.constructor);
        const newArgs = this.wrapFunctionArguments(args, def.constructor);
        const ptr = new target(...newArgs);
        this.unpinFunctionArgs(args, def.constructor);

        return newConstructor.wrap(ptr);
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
}

type TypeDefinition = ClosureDefiniton;
interface ClosureDefiniton extends FunctionDefinition {
  type: `asCB:${string}`;
  kind: string;
}

type ObjectDefiniton = Record<string, TypeDefinition>;
interface ClassDefinition {
  constructor: TypeDefinition[];
  members: ObjectDefiniton;
}
interface FunctionDefinition {
  args: TypeDefinition[];
  ret: TypeDefinition;
}
