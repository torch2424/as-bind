export function exported(a: string, b: string): string {
  return "!" + imported(a, b) + "!";
}

declare function imported(a: string, b: string): string;
