import { ASUtil } from "@assemblyscript/loader";
import AsbindInstance from "./asbind-instance";
import {
  isReservedExportKey,
  noop,
  notImplemented,
  classWrapper,
  isNonRefType,
  isSettableType,
  createFinalizationRegistry
} from "./helpers";
import {
  TYPES,
  D_Value,
  D_TypedArray,
  D_Generic,
  D_CallbackJS as D_Callback,
  D_ImportedFunction,
  D_ExportedFunction,
  D_ClassConstructor,
  D_ClassInstance,
  D_Namespace,
  typeHandler,
  as2js,
  js2as
} from "./types";

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
  // NOTE: This is currently a COPY of the buffer so changing it doesn't result in a updated Webassembly.Memory
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
      const wraper = (ptr: number, def2: D_ClassInstance) =>
        classWrapper(this, klass, ptr, def, def2);

      this.constructorWrapers.set(
        this.currentPath.join(".") + "." + def.name,
        wraper
      );

      if (def.generics > 0) {
        return class {
          constructor() {
            throw new Error(
              "You can not instanciate generic classes in JS-Land!"
            );
          }
        };
      }

      return new Proxy(klass, {
        construct(_, args) {
          const wrapedArgs = args.map((value, index) => {
            return this.handleTypeValue(value, def.params[index], "js2as");
          });

          const rawInstance = new klass(...wrapedArgs);

          const wrapedInstance = classWrapper(this, klass, rawInstance, def);

          return wrapedInstance;
        }
      });
    },
    js2as() {
      throw new Error("Not reachable");
    }
  },
  [TYPES.CLASS_INSTANCE]: {
    js2as(this: TypeHandler, v: any) {
      return this.classPointer.get(v);
    },
    as2js(this: TypeHandler, ptr: any, def: D_ClassInstance) {
      return this.constructorWrapers.get(def.constructorPath)(ptr, def);
    }
  },
  [TYPES.NAMESPACE]: {
    js2as(this: TypeHandler, imp: any, def: D_Namespace) {
      // IMPORT Namespace
      // We wrap all stuff once! We don't need to worry about generics! (for now) If we add
      // Import function generics we have to add handlint here!
      const newObj = {};

      Object.keys(imp).forEach(key => {
        if (def.root && isReservedExportKey(key)) return;

        // If a key is used that was not declared we don't modify the value
        newObj[key] = def.content[key]
          ? this.handleTypeValue(imp[key], def.content[key], "js2as")
          : imp[key];
      });

      return newObj as any;
    },
    as2js(this: TypeHandler, value: any, def: D_Namespace) {
      // EXPORT Namespace

      // Create Copy of current location.
      const myPath = [...this.currentPath];
      const map = new Map<string, any>();

      return new Proxy(value, {
        get: (_, prop: string) => {
          if (map.has(prop)) return map.get(prop);

          this.currentPath = [...myPath, prop];

          const wrapedValue = this.handleTypeValue(
            value[prop],
            def.content[prop],
            "as2js"
          );

          if (!isNonRefType(wrapedValue)) {
            map.set(prop, wrapedValue);
          }

          return wrapedValue;
        },
        set: (_, prop: string, newValue: any) => {
          if (isSettableType(def.content[prop])) {
            value[prop] = this.handleTypeValue(
              newValue,
              def.content[prop],
              "js2as"
            );
            return true;
          }

          return false;
        }
      });
    }
  }
};

export class TypeHandler {
  /* Uint8Array is only for typings can be any typed Array */
  typedViewsPointer = new WeakMap<Uint8Array, number>();
  functionPointer = new WeakMap<Function, number>();
  classPointer = new WeakMap<any, number>();
  constructorWrapers = new Map<
    string,
    (ptr: number, def: D_ClassInstance) => any
  >();

  currentListOfGenerics: Record<string, D_Value>;
  currentPath: string[] = [];

  regestry = createFinalizationRegistry(this);

  constructor(public asbind: AsbindInstance) {}

  util: ASUtil; // Raw exported object (by loader!)

  getCurrentGenericDefiniton(type: string): D_Value {
    // Loop reverse to generic List so that there can be overwrites
    if (this.currentListOfGenerics[type]) {
      return this.currentListOfGenerics[type];
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
