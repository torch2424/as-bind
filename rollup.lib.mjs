import resolve from "@rollup/plugin-node-resolve";
import json from "@rollup/plugin-json";
import { babel } from "@rollup/plugin-babel";
import { terser } from "rollup-plugin-terser";
import bundleSize from "rollup-plugin-bundle-size";
import typescript from "@rollup/plugin-typescript";
import fs from "fs/promises";

const pkg = JSON.parse(await fs.readFile("./package.json", "utf8"));

const sourcemapOption = process.env.PROD ? undefined : "inline";

const babelConfig = {
  babelHelpers: "bundled",
  presets: ["@babel/preset-env"]
};

let plugins = [
  resolve(),
  json(),
  typescript({ tsconfig: "./tsconfig.json" }),
  babel(babelConfig)
];

if (process.env.PROD) {
  plugins = [
    ...plugins,
    terser({ mangle: true, compress: true }),
    bundleSize()
  ];
}

const libBundles = [
  {
    input: "lib/lib.ts",
    output: {
      file: pkg.module.replace("esm", "cjs"),
      format: "cjs",
      sourcemap: sourcemapOption
    },
    watch: {
      clearScreen: false
    },
    plugins
  },
  {
    input: "lib/lib.ts",
    output: {
      file: pkg.module,
      format: "esm",
      sourcemap: sourcemapOption
    },
    watch: {
      clearScreen: false
    },
    plugins
  },
  {
    input: "lib/lib.ts",
    output: {
      file: pkg.iife,
      format: "iife",
      sourcemap: sourcemapOption,
      name: "AsBindIIFE"
    },
    watch: {
      clearScreen: false
    },
    plugins
  },
  {
    input: "transform.ts",
    output: {
      file: "dist/transform.cjs.js",
      format: "cjs",
      sourcemap: sourcemapOption
    },
    external: ["assemblyscript", "visitor-as/as"],
    plugins
  },
  {
    input: "transform.ts",
    output: {
      file: "dist/transform.amd.js",
      format: "amd",
      sourcemap: sourcemapOption
    },
    external: ["assemblyscript", "visitor-as/as"],
    plugins
  }
];

export default libBundles;
