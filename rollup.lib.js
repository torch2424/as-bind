import resolve from "@rollup/plugin-node-resolve";
import json from "@rollup/plugin-json";
import babel from "@rollup/plugin-babel";
import { terser } from "rollup-plugin-terser";
import bundleSize from "rollup-plugin-bundle-size";
import pkg from "./package.json";

const sourcemapOption = process.env.PROD ? undefined : "inline";

const babelConfig = {
  babelHelpers: "bundled",
  presets: ["@babel/preset-env"]
};

let plugins = [resolve(), json(), babel(babelConfig)];

if (process.env.PROD) {
  plugins = [
    ...plugins,
    terser({ mangle: true, compress: true }),
    bundleSize()
  ];
}

const libBundles = [
  {
    input: "lib/lib.js",
    output: {
      file: pkg.main,
      format: "cjs",
      sourcemap: sourcemapOption
    },
    watch: {
      clearScreen: false
    },
    plugins: plugins
  },
  {
    input: "lib/lib.js",
    output: {
      file: pkg.module,
      format: "esm",
      sourcemap: sourcemapOption
    },
    watch: {
      clearScreen: false
    },
    plugins: plugins
  },
  {
    input: "lib/lib.js",
    output: {
      file: pkg.iife,
      format: "iife",
      sourcemap: sourcemapOption,
      name: "AsBindIIFE"
    },
    watch: {
      clearScreen: false
    },
    plugins: plugins
  }
];

export default libBundles;
