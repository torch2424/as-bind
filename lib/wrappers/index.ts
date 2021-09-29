import { ASUtil } from "@assemblyscript/loader";

type ClassObject = (new (...args: any[]) => number) & {
  wrap: (ptr: number) => any;
};

class WrappingHandler {
  gcRegestry = FinalizationRegistry
    ? new FinalizationRegistry((ptr: number) => this.exports.__unpin(ptr))
    : { register(...args: any[]) {}, unregister(inst: any) {} };

  constructor(private exports: ASUtil) {}

  wrapObject(obj: Record<string, any>, def: ObjectDefiniton, isClass = false) {
    const _map = new Map<string, any>();

    const wrapedObject = new Proxy(obj, {
      get: (target, prop: string) => {
        if (prop === "__collect" && isClass) {
          return () => this.gcRegestry.unregister(wrapedObject);
        }

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
        this.exports.__pin(arg);
      }
    });
  }
  unpinFunctionArgs(obj: any[], def: TypeDefinition[]) {
    obj.forEach((arg, i) => {
      if (def[i].type !== "number") {
        this.exports.__unpin(arg);
      }
    });
  }
  // This is what the type-converters are for
  // TODO:
  wrapValueJsToAs(obj: any, def: TypeDefinition) {}
  wrapValueAsToJs(obj: any, def: TypeDefinition) {}
  classWrapper(obj: ClassObject, def: ClassDefinition, ptr: number) {
    this.exports.__pin(ptr);
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

interface TypeDefinition {
  type: string;
  kind: string;
  // TODO
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
