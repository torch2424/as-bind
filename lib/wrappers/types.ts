export enum TYPES {
  NOOP = "_", // D
  BOOLEAN = "b", // D
  NUMBER = "n", // D
  CALLBACK = "cb", // D
  EXPORTED_FUNCTION = "ef", // D
  IMPORTED_FUNCTION = "if", // D
  CLASS_INSTANCE = "ci", // D
  STRING = "s", // D
  ARRAYBUFFER = "ab", // D
  TYPEDARRAY = "ta", // D
  NAMESPACE = "ns", // D
  CLASS_CONSTRUCTOR = "cc", // D
  GENERIC = "g" // D
}

export type D_Value =
  | D_Noop
  | D_Boolean
  | D_Namespace
  | D_Number
  | D_String
  | D_TypedArray
  | D_ArrayBuffer
  | D_ClassInstance
  | D_ClassConstructor
  | D_ExportedFunction
  | D_ImportedFunction
  | D_CallbackJS
  | D_Generic;

export interface D_ExportedFunction {}

interface D_FunctionBase {
  return: D_Value;
  params: D_Value[];
}

export interface D_ExportedFunction extends D_FunctionBase {
  type: TYPES.EXPORTED_FUNCTION;
}

export interface D_ImportedFunction extends D_FunctionBase {
  type: TYPES.IMPORTED_FUNCTION;
}

export interface D_CallbackJS extends D_FunctionBase {
  type: TYPES.CALLBACK;
}

// This can be used when AS handles the type
export interface D_Noop {
  type: TYPES.NOOP;
}

export interface D_Boolean {
  type: TYPES.BOOLEAN;
}

export interface D_Namespace {
  type: TYPES.NAMESPACE;
  content: Record<string, D_Value>;
}

export interface D_Number {
  type: TYPES.NUMBER;
}

export interface D_String {
  type: TYPES.STRING;
}

export interface D_TypedArray {
  type: TYPES.TYPEDARRAY;
  kind:
    | "Int8"
    | "Uint8"
    | "Uint8Clamped"
    | "Int16"
    | "Uint16"
    | "Int32"
    | "Uint32"
    | "Float32"
    | "Float64"
    | "Int64"
    | "Uint64";
}

export interface D_ArrayBuffer {
  type: TYPES.ARRAYBUFFER;
}

export interface D_Intstance {
  typeIDs: any; // TODO: what is needed etc.
  import: D_Namespace;
  export: D_Namespace;
}

export const GENERIC_TYPE_NAME_PREFIY = "__GEN:";
export type GENRIC_TYPE_NAME = `__GEN:${string}:${number}`;

export interface D_Generic {
  type: TYPES.GENERIC;
  name: GENRIC_TYPE_NAME;
}

export interface D_ClassConstructor {
  type: TYPES.CLASS_CONSTRUCTOR;

  // Constructor arguments
  params: D_Value[];

  /**
   * count of generic types. These are refed by name __GEN:0 or __GEN:2 etc. - Type is GENRIC_TYPE_NAME
   */
  generics: number;
}

export interface D_ClassInstance {
  // Version should be Major when >= 1; While Version <= 1 it should be "0.MINOR".
  version: string;
  type: TYPES.CLASS_INSTANCE;
  // for example Puzzle.Grid. For STDLib you can use __lib.Map and so on.
  constructorPath: string;
  /**
   * Generics in SAME ORDER as in ClassConstructor!
   */
  generics: [D_Value];
}

const exampleConfig: D_Intstance = {
  typeIDs: {},
  import: {
    type: TYPES.NAMESPACE,
    content: {}
  },
  export: {
    type: TYPES.NAMESPACE,
    content: {
      ns1: {
        type: TYPES.NAMESPACE,
        content: {
          test: {
            type: TYPES.NUMBER
          }
        }
      }
    }
  }
};
