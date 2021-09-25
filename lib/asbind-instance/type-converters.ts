import AsbindInstance from "./asbind-instance";

// Converts web platform names for the different ArrayBufferViews
// to the names that ASC understands. Currently, that only means
// to cut off the `Big` in `BigInt64Array`.
const stdlibTypedArrayPrefix = "~lib/typedarray/";
function normalizeArrayBufferViewTypeName(typeName: string) {
  // Don’t do anything if this is not a stdlib type.
  if (!typeName.startsWith(stdlibTypedArrayPrefix)) {
    return typeName;
  }
  typeName = typeName.slice(stdlibTypedArrayPrefix.length);
  if (typeName.startsWith("Big")) {
    // Slice off `Big` as the loader doesn’t have that prefix.
    typeName = typeName.slice(3);
  }
  return typeName;
}

function nop(asbindInstance: AsbindInstance, value: any, typeName: string) {
  return value;
}

function getString(
  asbindInstance: AsbindInstance,
  value: any,
  typeName: string
) {
  return asbindInstance.exports.__getString(value);
}

function putString(
  asbindInstance: AsbindInstance,
  value: any,
  typeName: string
) {
  return asbindInstance.exports.__newString(value);
}

function getArrayBuffer(
  asbindInstance: AsbindInstance,
  value: any,
  typeName: string
) {
  return asbindInstance.exports.__getArrayBuffer(value);
}

function putArrayBuffer(
  asbindInstance: AsbindInstance,
  value: any,
  typeName: string
) {
  const ptr = asbindInstance.exports.__new(
    value.byteLength,
    asbindInstance.getTypeId(typeName)
  );
  new Uint8Array(
    asbindInstance.exports.memory.buffer,
    ptr,
    value.byteLength
  ).set(new Uint8Array(value));
  return ptr;
}

function getArrayBufferView(
  asbindInstance: AsbindInstance,
  value: any,
  typeName: string
) {
  return asbindInstance.exports[
    `__get${normalizeArrayBufferViewTypeName(typeName)}View`
  ](value);
}
function putArrayBufferView(
  asbindInstance: AsbindInstance,
  value: any,
  typeName: string
) {
  return asbindInstance.exports.__newArray(
    asbindInstance.getTypeId(typeName),
    value
  );
}

const stdlibArray = "~lib/array/Array";
function arrayInnerType(typeName: string) {
  if (!typeName.startsWith(stdlibArray)) {
    throw Error(`${JSON.stringify(typeName)} is not an array type`);
  }
  // Cut off stdlib path + generic angle brackets.
  return typeName.slice(`${stdlibArray}<`.length, -1);
}

function getArray(
  asbindInstance: AsbindInstance,
  value: any,
  typeName: string
) {
  const innerTypeName = arrayInnerType(typeName);
  const innerTypeConverter = getConverterForType(innerTypeName);
  const rawArray = asbindInstance.exports.__getArray(value);
  return rawArray.map(v =>
    innerTypeConverter.ascToJs(asbindInstance, v, innerTypeName)
  );
}

function putArray(
  asbindInstance: AsbindInstance,
  value: any,
  typeName: string
) {
  const innerTypeName = arrayInnerType(typeName);
  const innerTypeConverter = getConverterForType(innerTypeName);
  const convertedValues = value.map(v =>
    innerTypeConverter.jsToAsc(asbindInstance, v, innerTypeName)
  );
  return asbindInstance.exports.__newArray(
    asbindInstance.getTypeId(typeName),
    convertedValues
  );
}

export interface Converter {
  ascToJs(asbindInstance: AsbindInstance, value: any, typeName: string): any;
  jsToAsc(asbindInstance: AsbindInstance, value: any, typeName: string): any;
}

export const converters = new Map<string | RegExp, Converter>([
  ["void", {ascToJs: nop, jsToAsc: nop}],
  // Technically this matches types that don’ exist (like f8),
  // but since those can only appear if the compiler accepts them,
  // it seems unlikely for that to be a problem.
  [
    /^(i|u|f)(8|16|32|64)|[ui]size|bool|externref$/,
    {ascToJs: nop, jsToAsc: nop}
  ],
  ["~lib/string/String", {ascToJs: getString, jsToAsc: putString}],
  [
    "~lib/typedarray/Int8Array",
    {ascToJs: getArrayBufferView, jsToAsc: putArrayBufferView}
  ],
  [
    "~lib/typedarray/Int16Array",
    {ascToJs: getArrayBufferView, jsToAsc: putArrayBufferView}
  ],
  [
    "~lib/typedarray/Int32Array",
    {ascToJs: getArrayBufferView, jsToAsc: putArrayBufferView}
  ],
  [
    "~lib/typedarray/Uint8Array",
    {ascToJs: getArrayBufferView, jsToAsc: putArrayBufferView}
  ],
  [
    "~lib/typedarray/Uint16Array",
    {ascToJs: getArrayBufferView, jsToAsc: putArrayBufferView}
  ],
  [
    "~lib/typedarray/Uint32Array",
    {ascToJs: getArrayBufferView, jsToAsc: putArrayBufferView}
  ],
  [
    "~lib/typedarray/Int64Array",
    {ascToJs: getArrayBufferView, jsToAsc: putArrayBufferView}
  ],
  [
    "~lib/typedarray/Uint64Array",
    {ascToJs: getArrayBufferView, jsToAsc: putArrayBufferView}
  ],
  [
    "~lib/typedarray/Uint8ClampedArray",
    {ascToJs: getArrayBufferView, jsToAsc: putArrayBufferView}
  ],
  [
    "~lib/typedarray/Float32Array",
    {ascToJs: getArrayBufferView, jsToAsc: putArrayBufferView}
  ],
  [
    "~lib/typedarray/Float64Array",
    {ascToJs: getArrayBufferView, jsToAsc: putArrayBufferView}
  ],
  [
    "~lib/arraybuffer/ArrayBuffer",
    {ascToJs: getArrayBuffer, jsToAsc: putArrayBuffer}
  ],
  [/^~lib\/array\/Array<.+>$/, {ascToJs: getArray, jsToAsc: putArray}]
]);

const warned = new Set<string>();
export function getConverterForType(typeName: string): Converter {
  for (const [matcher, converter] of converters) {
    if (typeof matcher === "string") {
      if (matcher === typeName) {
        return converter;
      }
      continue;
    } else if (matcher.test(typeName)) {
      return converter;
    }
  }
  if (!warned.has(typeName)) {
    console.warn(
      `No converter for ${JSON.stringify(typeName)}, using pass-through`
    );
    warned.add(typeName);
  }
  return {ascToJs: nop, jsToAsc: nop};
}

export function getAscToJsConverterForType(typeName: string) {
  return getConverterForType(typeName).ascToJs;
}

export function getJsToAscConverterForType(typeName: string) {
  return getConverterForType(typeName).jsToAsc;
}
