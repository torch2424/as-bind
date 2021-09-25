// The entry file of your WebAssembly module.

declare function string_log(str: string): void;

class MemoryTrash {
  public t1: string;
  public t2: string;
  public t3: i32;

  constructor() {
    this.t1 = "trash1";
    this.t2 = "trash1";
    this.t3 = 42;
  }
}

export function trash(amount: i32): void {
  for (let i = 0; i < amount; i++) {
    let t = new MemoryTrash();
  }
}

export function string_parameter(
  s1: string,
  s2: string,
  s3: string,
  s4: string
): void {
  string_log(s1);
  string_log(s2);
  string_log(s3);
  string_log(s4);
}
