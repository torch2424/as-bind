import {swappedConcat} from "./imports";

export function addExclamations(s: string): string {
  return "!" + s + "!";
}

export function swapAndPad(a: string, b: string): string {
  return addExclamations(swappedConcat(a, b));
}
