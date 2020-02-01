const SUPPORTED_REF_TYPES = {
  STRING: {
    isTypeFromArgument: arg => {
      return typeof arg === "string";
    },
    isTypeFromReference: (wasmExports, ref, id) => {
      return wasmExports.__instanceof(ref, id);
    },
    getRef: (wasmExports, arg, id) => {
      return wasmExports.__retain(wasmExports.__allocString(arg));
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getString(responseRef);
    }
  },
  INT8ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Int8Array;
    },
    isTypeFromReference: (wasmExports, ref, id) => {
      return wasmExports.__instanceof(ref, id);
    },
    getRef: (wasmExports, arg, id) => {
      return wasmExports.__retain(wasmExports.__allocArray(id, arg));
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getInt8Array(responseRef).slice();
    }
  },
  UINT8ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Uint8Array;
    },
    isTypeFromReference: (wasmExports, ref, id) => {
      return wasmExports.__instanceof(ref, id);
    },
    getRef: (wasmExports, arg, id) => {
      return wasmExports.__retain(wasmExports.__allocArray(id, arg));
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getUint8Array(responseRef).slice();
    }
  },
  INT16ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Int16Array;
    },
    isTypeFromReference: (wasmExports, ref, id) => {
      return wasmExports.__instanceof(ref, id);
    },
    getRef: (wasmExports, arg, id) => {
      return wasmExports.__retain(wasmExports.__allocArray(id, arg));
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getInt16Array(responseRef).slice();
    }
  },
  UINT16ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Uint16Array;
    },
    isTypeFromReference: (wasmExports, ref, id) => {
      return wasmExports.__instanceof(ref, id);
    },
    getRef: (wasmExports, arg, id) => {
      return wasmExports.__retain(wasmExports.__allocArray(id, arg));
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getUint16Array(responseRef).slice();
    }
  },
  INT32ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Int32Array;
    },
    isTypeFromReference: (wasmExports, ref, id) => {
      return wasmExports.__instanceof(ref, id);
    },
    getRef: (wasmExports, arg, id) => {
      return wasmExports.__retain(wasmExports.__allocArray(id, arg));
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getInt32Array(responseRef).slice();
    }
  },
  UINT32ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Uint32Array;
    },
    isTypeFromReference: (wasmExports, ref, id) => {
      return wasmExports.__instanceof(ref, id);
    },
    getRef: (wasmExports, arg, id) => {
      return wasmExports.__retain(wasmExports.__allocArray(id, arg));
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getUint32Array(responseRef).slice();
    }
  },
  FLOAT32ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Float32Array;
    },
    isTypeFromReference: (wasmExports, ref, id) => {
      return wasmExports.__instanceof(ref, id);
    },
    getRef: (wasmExports, arg, id) => {
      return wasmExports.__retain(wasmExports.__allocArray(id, arg));
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getFloat32Array(responseRef).slice();
    }
  },
  FLOAT64ARRAY: {
    isTypeFromArgument: arg => {
      return arg instanceof Float64Array;
    },
    isTypeFromReference: (wasmExports, ref, id) => {
      return wasmExports.__instanceof(ref, id);
    },
    getRef: (wasmExports, arg, id) => {
      return wasmExports.__retain(wasmExports.__allocArray(id, arg));
    },
    getValueFromRef: (wasmExports, responseRef) => {
      return wasmExports.__getFloat64Array(responseRef).slice();
    }
  }
};

export default SUPPORTED_REF_TYPES;
