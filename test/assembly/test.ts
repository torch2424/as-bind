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
