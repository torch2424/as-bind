// Console.log
let currentLog: string = "";
declare function consoleLog(): void;
export function log(value: string): void {
  currentLog = value;
}
