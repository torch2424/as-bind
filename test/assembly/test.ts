// The entry file of your WebAssembly module.
export * from "../../lib/assembly/asbind";

export function helloWorld(world: string): string {
  return "Hello " + world + "!";
}
