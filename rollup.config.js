import libBundles from "./rollup.lib";
import mdBundles from "./rollup.markdown-parser";

let exports = [];

if (process.env.LIB) {
  exports = [...exports, ...libBundles];
}

if (process.env.MD) {
  exports = [...exports, ...mdBundles];
}

export default exports;
