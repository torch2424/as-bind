export function swapAndPad(a: ArrayBuffer, b: ArrayBuffer): ArrayBuffer {
  const intermediate = Uint8Array.wrap(swappedConcat(a, b));
  const result = new Uint8Array(intermediate.length + 2);
  result.set(intermediate, 1);
  result[0] = 255;
  result[result.length - 1] = 255;
  return result.buffer;
}

declare function swappedConcat(a: ArrayBuffer, b: ArrayBuffer): ArrayBuffer;
