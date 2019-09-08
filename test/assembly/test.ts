// The entry file of your WebAssembly module.
export * from "../../lib/assembly/asbind";

export function helloWorld(world: string): string {
  return "Hello " + world + "!";
}

export function helloWorldTwo(world: string, worldTwo: string): string {
  return "Hello " + world + " and " + worldTwo + "!";
}

export function mapInt8Array(array: Int8Array): Int8Array {
  return array.map((value: i8) => value * 2);
}

export function mapUint8Array(array: Uint8Array): Uint8Array {
  return array.map((value: u8) => value * 2);
}

export function mapInt16Array(array: Int16Array): Int16Array {
  return array.map((value: i16) => value * 2);
}

export function mapUint16Array(array: Uint16Array): Uint16Array {
  return array.map((value: u16) => value * 2);
}

export function mapInt32Array(array: Int32Array): Int32Array {
  return array.map((value: i32) => value * 2);
}

export function mapUint32Array(array: Uint32Array): Uint32Array {
  return array.map((value: u32) => value * 2);
}

export function mapFloat32Array(array: Float32Array): Float32Array {
  return array.map((value: f32) => value * 2);
}

export function mapFloat64Array(array: Float64Array): Float64Array {
  return array.map((value: f64) => value * 2);
}

// NOTE: Asbind does not support return types on import object functions
declare function testImportString(value: string): void;
export function callTestImportString(value: string): void {
  testImportString(value);
}

declare function testImportTwoStrings(valueOne: string, valueTwo: string): void;
export function callTestImportTwoStrings(
  valueOne: string,
  valueTwo: string
): void {
  testImportTwoStrings(valueOne, valueTwo);
}

declare function testImportInt8Array(value: Int8Array): void;
export function callTestImportInt8Array(value: Int8Array): void {
  testImportInt8Array(value);
}

declare function testImportUint8Array(value: Uint8Array): void;
export function callTestImportUint8Array(value: Uint8Array): void {
  testImportUint8Array(value);
}

declare function testImportInt16Array(value: Int16Array): void;
export function callTestImportInt16Array(value: Int16Array): void {
  testImportInt16Array(value);
}

declare function testImportUint16Array(value: Uint16Array): void;
export function callTestImportUint16Array(value: Uint16Array): void {
  testImportUint16Array(value);
}

declare function testImportInt32Array(value: Int32Array): void;
export function callTestImportInt32Array(value: Int32Array): void {
  testImportInt32Array(value);
}

declare function testImportUint32Array(value: Uint32Array): void;
export function callTestImportUint32Array(value: Uint32Array): void {
  testImportUint32Array(value);
}

declare function testImportFloat32Array(value: Float32Array): void;
export function callTestImportFloat32Array(value: Float32Array): void {
  testImportFloat32Array(value);
}

declare function testImportFloat64Array(value: Float64Array): void;
export function callTestImportFloat64Array(value: Float64Array): void {
  testImportFloat64Array(value);
}
