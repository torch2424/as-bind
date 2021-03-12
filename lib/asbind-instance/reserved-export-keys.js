// Runtime Export keys we don't want to bind to
export const RESERVED_RUNTIME_EXPORT_KEYS = [
  /__new(String|Array)/,
  "__getString",
  /__getArray(Buffer|View)?/,
  /__get(Ui|I)nt(8|16|32|64)Array(View)?/,
  /__getUint8ClampedArray(View)?/,
  /__getFloat(32|64|)Array(View)?/,
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

export function isReservedExportKey(key) {
  if (key.startsWith("__asbind")) {
    return true;
  }

  return RESERVED_RUNTIME_EXPORT_KEYS.some(reservedKey => {
    if (typeof reservedKey === "string") {
      return reservedKey === key;
    }
    return reservedKey.test(key);
  });
}
