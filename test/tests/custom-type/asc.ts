class X {
  x: string;
  constructor(x: string) {
    this.x = x;
  }
}
export function makeAThing(v: string): X {
  return new X(v);
}

export function readAThing(v: X): u32 {
  return v.x.length;
}
