export function exported(a: Uint8Array, b: Uint8Array): Uint8Array {
  const intermediate = imported(a, b);
  const result = new Uint8Array(intermediate.length + 2);
  result.set(intermediate, 1);
  result[0] = 255;
  result[result.length - 1] = 255;
  return result;
}

declare function imported(a: Uint8Array, b: Uint8Array): Uint8Array;
