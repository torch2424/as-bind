export function swapAndPad(a: string, b: string): string {
  return "!" + swappedConcat(a, b) + "!";
}

declare function swappedConcat(a: string, b: string): string;
