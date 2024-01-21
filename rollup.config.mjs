import libBundles from "./rollup.lib.mjs";
import mdBundles from "./rollup.markdown-parser.mjs";

let exports = [];

if (process.env.LIB) {
  exports = [...exports, ...libBundles];
}

if (process.env.MD) {
  exports = [...exports, ...mdBundles];
}

export default exports;
