const getUnsafeResponse = (value, ptr) => {
  return {
    ptr: ptr,
    value: value
  };
};

export const SUPPORTED_REF_TYPES = {
  STRING: {
    isTypeFromArgument: arg => {
      return typeof arg === "string";
    },
    isTypeFromReference: (wasmExports, ref) => {
      return wasmExports.__instanceof(ref, wasmExports.__asbind_String_ID);
    },
    getRef: (wasmExports, arg) => {
      return wasmExports.__pin(wasmExports.__newString(arg));
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getString(responseRef);
    }
  },
  INT8ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Int8Array;
    },
    isTypeFromReference: (wasmExports, ref) => {
      return wasmExports.__instanceof(ref, wasmExports.__asbind_Int8Array_ID);
    },
    getRef: (wasmExports, arg) => {
      return wasmExports.__pin(
        wasmExports.__newArray(wasmExports.__asbind_Int8Array_ID, arg)
      );
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getInt8Array(responseRef);
    },
    getUnsafeValueFromRef: (wasmExports, responseRef) => {
      return getUnsafeResponse(
        wasmExports.__getInt8ArrayView(responseRef),
        responseRef
      );
    }
  },
  UINT8ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Uint8Array;
    },
    isTypeFromReference: (wasmExports, ref) => {
      return wasmExports.__instanceof(ref, wasmExports.__asbind_Uint8Array_ID);
    },
    getRef: (wasmExports, arg) => {
      return wasmExports.__pin(
        wasmExports.__newArray(wasmExports.__asbind_Uint8Array_ID, arg)
      );
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getUint8Array(responseRef);
    },
    getUnsafeValueFromRef: (wasmExports, responseRef) => {
      return getUnsafeResponse(
        wasmExports.__getUint8ArrayView(responseRef),
        responseRef
      );
    }
  },
  INT16ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Int16Array;
    },
    isTypeFromReference: (wasmExports, ref) => {
      return wasmExports.__instanceof(ref, wasmExports.__asbind_Int16Array_ID);
    },
    getRef: (wasmExports, arg) => {
      return wasmExports.__pin(
        wasmExports.__newArray(wasmExports.__asbind_Int16Array_ID, arg)
      );
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getInt16Array(responseRef);
    },
    getUnsafeValueFromRef: (wasmExports, responseRef) => {
      return getUnsafeResponse(
        wasmExports.__getInt16ArrayView(responseRef),
        responseRef
      );
    }
  },
  UINT16ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Uint16Array;
    },
    isTypeFromReference: (wasmExports, ref) => {
      return wasmExports.__instanceof(ref, wasmExports.__asbind_Uint16Array_ID);
    },
    getRef: (wasmExports, arg) => {
      return wasmExports.__pin(
        wasmExports.__newArray(wasmExports.__asbind_Uint16Array_ID, arg)
      );
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getUint16Array(responseRef);
    },
    getUnsafeValueFromRef: (wasmExports, responseRef) => {
      return getUnsafeResponse(
        wasmExports.__getUint16ArrayView(responseRef),
        responseRef
      );
    }
  },
  INT32ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Int32Array;
    },
    isTypeFromReference: (wasmExports, ref) => {
      return wasmExports.__instanceof(ref, wasmExports.__asbind_Int32Array_ID);
    },
    getRef: (wasmExports, arg) => {
      return wasmExports.__pin(
        wasmExports.__newArray(wasmExports.__asbind_Int32Array_ID, arg)
      );
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getInt32Array(responseRef);
    },
    getUnsafeValueFromRef: (wasmExports, responseRef) => {
      return getUnsafeResponse(
        wasmExports.__getInt32ArrayView(responseRef),
        responseRef
      );
    }
  },
  UINT32ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Uint32Array;
    },
    isTypeFromReference: (wasmExports, ref) => {
      return wasmExports.__instanceof(ref, wasmExports.__asbind_Uint32Array_ID);
    },
    getRef: (wasmExports, arg) => {
      return wasmExports.__pin(
        wasmExports.__newArray(wasmExports.__asbind_Uint32Array_ID, arg)
      );
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getUint32Array(responseRef);
    },
    getUnsafeValueFromRef: (wasmExports, responseRef) => {
      return getUnsafeResponse(
        wasmExports.__getUint32ArrayView(responseRef),
        responseRef
      );
    }
  },
  FLOAT32ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Float32Array;
    },
    isTypeFromReference: (wasmExports, ref) => {
      return wasmExports.__instanceof(
        ref,
        wasmExports.__asbind_Float32Array_ID
      );
    },
    getRef: (wasmExports, arg) => {
      return wasmExports.__pin(
        wasmExports.__newArray(wasmExports.__asbind_Float32Array_ID, arg)
      );
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getFloat32Array(responseRef);
    },
    getUnsafeValueFromRef: (wasmExports, responseRef) => {
      return getUnsafeResponse(
        wasmExports.__getFloat32ArrayView(responseRef),
        responseRef
      );
    }
  },
  FLOAT64ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Float64Array;
    },
    isTypeFromReference: (wasmExports, ref) => {
      return wasmExports.__instanceof(
        ref,
        wasmExports.__asbind_Float64Array_ID
      );
    },
    getRef: (wasmExports, arg) => {
      return wasmExports.__pin(
        wasmExports.__newArray(wasmExports.__asbind_Float64Array_ID, arg)
      );
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getFloat64Array(responseRef);
    },
    getUnsafeValueFromRef: (wasmExports, responseRef) => {
      return getUnsafeResponse(
        wasmExports.__getFloat64ArrayView(responseRef),
        responseRef
      );
    }
  }
};

// Our return type constant
export const RETURN_TYPES = {
  NUMBER: "NUMBER",
  STRING: "STRING",
  INT8ARRAY: "INT8ARRAY",
  UINT8ARRAY: "UINT8ARRAY",
  INT16ARRAY: "INT16ARRAY",
  UINT16ARRAY: "UINT16ARRAY",
  INT32ARRAY: "INT32ARRAY",
  UINT32ARRAY: "UINT32ARRAY",
  FLOAT32ARRAY: "FLOAT32ARRAY",
  FLOAT64ARRAY: "FLOAT64ARRAY"
};
