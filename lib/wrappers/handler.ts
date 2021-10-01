import { ASUtil } from "@assemblyscript/loader";
import AsbindInstance from "../asbind-instance/asbind-instance";
import {
  TYPES,
  D_Value,
  D_TypedArray,
  D_Generic,
  D_CallbackJS as D_Callback,
  D_ImportedFunction,
  D_ExportedFunction,
  D_ClassConstructor
} from "./types";

type as2js<RESULT, DEFINITON extends D_Value> = (
  this: TypeHandler,
  ptr: number,
  def: DEFINITON
) => RESULT;
type js2as<INPUT, DEFINITON extends D_Value> = (
  this: TypeHandler,
  value: INPUT,
  def: DEFINITON
) => number;

interface typeHandler {
  as2js: as2js<any, any>;
  js2as: js2as<any, any>;
}

const notImplemented = (val: any, def: D_Value) => {
  throw new Error(
    `Handeling type ${TYPES[def.type] ?? def.type} is currently not supported!`
  );
};

const noop: typeHandler = {
  as2js: (v: number) => v,
  js2as: (v: any) => v.__ptr ?? v
};

const noImpl: typeHandler = {
  as2js: notImplemented,
  js2as: notImplemented
};

const typeHandlers: Record<TYPES, typeHandler> = {
  [TYPES.NOOP]: noop,
  [TYPES.NUMBER]: noop,
  [TYPES.BOOLEAN]: noop,
  [TYPES.STRING]: {
    as2js(this: TypeHandler, ptr: number) {
      return this.util.__getString(ptr);
    },
    js2as(this: TypeHandler, value: string) {
      return this.util.__newString(value);
    }
  },
  [TYPES.ARRAYBUFFER]: {
    as2js(this: TypeHandler, ptr: number) {
      return this.util.__getArrayBuffer(ptr);
    },
    js2as(this: TypeHandler, value: ArrayBuffer) {
      return this.util.__newArrayBuffer(value);
    }
  },
  [TYPES.TYPEDARRAY]: {
    // When comming from AS this only creates a corresponding view so the buffer of that typedarray is the WA.Memory
    // This is intentional! If you want a copy use .slice(0)!
    as2js(this: TypeHandler, ptr: number, def: D_TypedArray) {
      const typedView = this.util[`__get${def.type}View`](ptr);

      // Save pointer so a better pass back for TypedArrays in memory!
      this.typedViewsPointer.set(typedView, ptr);

      return typedView;
    },
    js2as(this: TypeHandler, value: Uint8Array, def: D_TypedArray) {
      if (this.typedViewsPointer.has(value)) {
        // Allready lives in WA-Land so just give a pointer
        return this.typedViewsPointer.get(value);
      }

      return this.util.__newArray(this.asbind.getTypeId(def.type));
    }
  },
  [TYPES.GENERIC]: {
    // Generic are simple handler as in the object that can be generics all of the heavy lifting is done.
    as2js(this: TypeHandler, ptr: number, def: D_Generic) {
      const type = this.getCurrentGenericDefiniton(def.name);

      // Delegate to corresponding handler
      return this.handleTypeValue(ptr, def, "as2js");
    },
    js2as(this: TypeHandler, value: Uint8Array, def: D_Generic) {
      const type = this.getCurrentGenericDefiniton(def.name);

      // Delegate to corresponding handler
      return this.handleTypeValue(value, def, "js2as");
    }
  },
  [TYPES.CALLBACK]: {
    // This handles functions passed to ASSEMBLYSCRIPT as returns or as arguments!
    as2js(this: TypeHandler, ptr: number, def: D_Callback) {
      const callable = this.util.__getFunction(ptr);

      const wrapped = (...args) => {
        const wrapedArgs = args.map((value, index) => {
          return this.handleTypeValue(value, def.params[index], "js2as");
        });

        const returnValue = callable(...wrapedArgs);

        this.handleTypeValue(returnValue, def, "as2js");

        return returnValue;
      };

      this.functionPointer.set(wrapped, ptr);
    },
    // This will not run! as these cases are handled by TYPES.CALLBACK
    js2as(this: TypeHandler, value: Function, def: D_Callback) {
      if (this.functionPointer.has(value)) {
        return this.functionPointer.get(value);
      }

      // TODO: Handle JS Functions passed to WA
      // If we get Closures we can implement it!
      // See https://github.com/AssemblyScript/assemblyscript/issues/798
      notImplemented(value, def);
    }
  },
  [TYPES.IMPORTED_FUNCTION]: {
    // This handles functions passed to ASSEMBLYSCRIPT as returns or as arguments!
    as2js(this: TypeHandler, ptr: number, def: D_ImportedFunction) {
      throw new Error("Not reachable");
    },
    // This will not run! as these cases are handled by TYPES.CALLBACK
    js2as(this: TypeHandler, value: Function, def: D_ImportedFunction) {
      const wrapped = (...args) => {
        const wrapedArgs = args.map((value, index) => {
          return this.handleTypeValue(value, def.params[index], "as2js");
        });

        const returnValue = value(...wrapedArgs);

        this.handleTypeValue(returnValue, def, "js2as");

        return returnValue;
      };

      return wrapped as any;
    }
  },
  [TYPES.EXPORTED_FUNCTION]: {
    // This handles functions passed to ASSEMBLYSCRIPT as returns or as arguments!
    as2js(this: TypeHandler, func: any, def: D_ExportedFunction) {
      const wrapped = (...args) => {
        const wrapedArgs = args.map((value, index) => {
          return this.handleTypeValue(value, def.params[index], "js2as");
        });

        const returnValue = func(...wrapedArgs);

        this.handleTypeValue(returnValue, def, "as2js");

        return returnValue;
      };

      return wrapped;
    },
    // This will not run! as these cases are handled by TYPES.CALLBACK
    js2as(this: TypeHandler, value: Function, def: D_ExportedFunction) {
      throw new Error("Not reachable");
    }
  },

  [TYPES.CLASS_CONSTRUCTOR]: {
    as2js(this: TypeHandler, klass: any, def: D_ClassConstructor) {
      // TODO: Generate the construcror Wraper and add it to this.constructorWrapers
      // This is from all these converters the most complex

      return new Proxy(klass, {
        construct(_, args) {
          // return new t(...args)
          const wrapedArgs = args.map((value, index) => {
            return this.handleTypeValue(value, def.params[index], "js2as");
          });

          const rawInstance = new klass(...wrapedArgs);

          // TODO: wrap class instance

          return rawInstance;
        }
      });
    },
    js2as() {
      throw new Error("Not reachable");
    }
  },
  [TYPES.CLASS_INSTANCE]: noImpl,
  [TYPES.NAMESPACE]: noImpl
};

class TypeHandler {
  typedViewsPointer = new WeakMap<Uint8Array, number>();
  functionPointer = new WeakMap<Function, number>();
  classPointer = new WeakMap<any, number>();
  constructorWrapers = new Map<string, (ptr: number) => any>();

  currentListOfGenerics: Map<string, D_Value>[];
  currentPath: string[];

  asbind: AsbindInstance;

  // this is currently needed but they will be moved to ASBindinstance but
  // For development this is nicer
  util: ASUtil; // Raw exported object (by loader!)
  exports: any; // exported object wrapt by as-bind

  getCurrentGenericDefiniton(type: string): D_Value {
    // Loop reverse to generic List so that there can be overwrites
    for (let i = this.currentListOfGenerics.length - 1; i > 0; i--) {
      if (this.currentListOfGenerics[i].has(type)) {
        return this.currentListOfGenerics[i].get(type);
      }
    }

    // Not found => Noop
    // TODO: propbably should print a warning

    return {
      type: TYPES.NOOP
    };
  }

  handleTypeValue(obj: any, def: D_Value, kind: "as2js" | "js2as") {
    return this.getTypeHandler(def.type, kind as any).call(this, obj, def);
  }

  getTypeHandler(type: TYPES, kind: "as2js"): as2js<any, any>;
  getTypeHandler(type: TYPES, kind: "js2as"): js2as<any, any>;
  getTypeHandler(type: TYPES, kind: "as2js" | "js2as") {
    return (typeHandlers[type] ?? typeHandlers[TYPES.NOOP])[kind];
  }
}
