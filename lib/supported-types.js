const SUPPORTED_TYPES = {
  STRING: {
    isTypeFromArgument: (arg) => {
      return typeof arg === 'string'
    },
    isTypeFromReference: (wasmExports, ref) => {
      return wasmExports.__instanceof(ref, wasmExports.__asbind_String_ID);
    },
    getRef: (wasmExports, arg) => {
      return wasmExports.__retain(wasmExports.__allocString(arg));
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getString(responseRef);
    }
  },
  UINT8ARRAY: {
    isTypeFromArgument: (arg) => {
      return arg instanceof Uint8Array
    },
    isTypeFromReference: (wasmExports, ref) => {
      return wasmExports.__instanceof(ref, wasmExports.__asbind_Uint8Array_ID);
    },
    getRef: (wasmExports, arg) => {
      return wasmExports.__retain(wasmExports.__allocArray(wasmExports.__asbind_Uint8Array_ID, arg));
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getArray(responseRef);
    }
  }
};

export default SUPPORTED_TYPES;
