class X {
  x: u32;
  constructor(x: u32) {
    this.x = x;
  }
}
export function makeAThing(v: u32): X {
  return new X(v);
}
