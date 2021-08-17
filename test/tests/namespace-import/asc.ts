@external("my_module", "my_log")
declare function log(str: string): void;

@external("my_log2")
declare function log2(str: string): void;

export function fn(): void {
  log("ok");
  log2("fine");
}
