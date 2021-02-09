// Runtime Export keys we don't want to bind to
export const RESERVED_RUNTIME_EXPORT_KEYS = [
  "__newString",
  "__newArray",
  "__getString",
  "__getArrayBuffer",
  "__getArray",
  "__getArrayView",
  "__getInt8ArrayView",
  "__getUint8ArrayView",
  "__getUint8ClampedArrayView",
  "__getInt16ArrayView",
  "__getUint16ArrayView",
  "__getInt32ArrayView",
  "__getUint32ArrayView",
  "__getInt64ArrayView",
  "__getUint64ArrayView",
  "__getFloat32ArrayView",
  "__getFloat64ArrayView",
  "__new",
  "__renew",
  "__pin",
  "__unpin",
  "__instanceof",
  "__collect",
  "__rtti_base",
  "__alloc",
  "__allocArray",
  "__allocString"
];

// Runtime export keys that must exist for the AsBind to work
export const REQUIRED_RUNTIME_EXPORT_KEYS = [
  "__new",
  "__newString",
  "__newArray",
  "__pin",
  "__unpin",
  "__instanceof",
  "__getString",
  "__getArrayBuffer",
  "__getArray",
  "__getArrayView",
  "__getInt8ArrayView",
  "__getUint8ArrayView",
  "__getUint8ClampedArrayView",
  "__getInt16ArrayView",
  "__getUint16ArrayView",
  "__getInt32ArrayView",
  "__getUint32ArrayView",
  "__getInt64ArrayView",
  "__getUint64ArrayView",
  "__getFloat32ArrayView",
  "__getFloat64ArrayView"
];

export function isReservedExportKey(key) {
  if (key.startsWith("__asbind")) {
    return true;
  } else if (RESERVED_RUNTIME_EXPORT_KEYS.includes(key)) {
    return true;
  }

  return false;
}
