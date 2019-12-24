export const RUNTIME_EXPORT_KEYS = [
  "__alloc",
  "__allocString",
  "__retain",
  "__release"
];

export function isReservedExportKey(key) {
  if (key.startsWith("__asbind")) {
    return true;
  } else if (RUNTIME_EXPORT_KEYS.includes(key)) {
    return true;
  }

  return false;
}
