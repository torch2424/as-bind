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
  closure: {
    as2js: (h, value: number, def: ClosureDefiniton, hash: string) => {
      return (...args) => {
        const newArgs = h.wrapFunctionArguments(args, def.args);

        return h.wrapValueAsToJs(
          h.util[`__call__${hash}`](value, ...newArgs),
          def.ret
        );
      };
    },
    js2as: () => {
      throw new Error(
        "Passing a JS callback to AssemblyScript is currently not supported."
      );
    }
  },
  class: {
    js2as: (_, value) => value.__instance,
    as2js: (h, value, className) => h.exports[className].wrap(value)
  }
  // Add Array, ArrayBuffer, TypedArrays etc. from type-converters
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
    });

    return wrapedObject;
  }
  wrapFunction(obj: Function, def: FunctionDefinition) {
    return (...args) => {
      const newArgs = this.wrapFunctionArguments(args, def.args);

      const ret = this.wrapValueAsToJs(obj(...newArgs), def.ret);

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

    return (typeHandlers[type] ?? typeHandlers.noop).js2as(
      this,
      obj,
      def,
      ...args
    );
  }
  wrapValueAsToJs(obj: any, def: TypeDefinition) {
    const [type, ...args] = def.type.split(":");

    return (typeHandlers[type] ?? typeHandlers.noop).as2js(
      this,
      obj,
      def,
      ...args
    );
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
  }
}

type TypeDefinition = ClosureDefiniton;
interface ClosureDefiniton extends FunctionDefinition {
  type: `closure:${string}`;
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
