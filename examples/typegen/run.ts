import { instantiate } from "../..";
import * as EXPORTS from "./types-dist/example-entry";
async function start() {
  const a = await instantiate<typeof EXPORTS>(fetch("..."), {});
  a.exports.sum(42, 8);
  // @ts-expect-error
  a.exports.sum("abc", 2);
}
start();
