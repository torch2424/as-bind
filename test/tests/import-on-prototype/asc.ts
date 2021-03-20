declare function thing(): string;
declare const otherThing: u32;

export function add(): string {
  return otherThing.toString() + thing();
}
