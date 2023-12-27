import resolve from "@rollup/plugin-node-resolve";
import commonjs from "@rollup/plugin-commonjs";
import { babel } from "@rollup/plugin-babel";
import json from "@rollup/plugin-json";
import { terser } from "rollup-plugin-terser";
import bundleSize from "rollup-plugin-bundle-size";
import copy from "rollup-plugin-copy";
import hash from "rollup-plugin-hash";
import postcss from "rollup-plugin-postcss";
import postcssImport from "postcss-import";
import del from "rollup-plugin-delete";
import fs from "fs";
import { mkdirp } from "mkdirp";

const writeIndexHtmlToBuild = bundleName => {
  let indexHtml = fs.readFileSync(
    "examples/markdown-parser/index.html",
    "utf8"
  );
  mkdirp.sync("dist/examples/markdown-parser");
  indexHtml = indexHtml.replace(
    "<%BUNDLE%>",
    bundleName.replace("dist/examples/markdown-parser/", "")
  );
  fs.writeFileSync(
    "dist/examples/markdown-parser/index.html",
    indexHtml,
    "utf8"
  );
};

const sourcemapOption = process.env.PROD ? undefined : "inline";

const babelPluginConfig = {
  babelHelpers: "bundled",
  presets: ["@babel/preset-env"],
  plugins: [
    "@babel/plugin-proposal-class-properties",
    "@babel/plugin-proposal-object-rest-spread",
    "@babel/plugin-proposal-export-default-from",
    ["@babel/plugin-transform-react-jsx", { pragma: "h" }]
  ]
};

let plugins = [
  postcss({
    extensions: [".css"],
    plugins: [postcssImport()]
  }),
  resolve(),
  babel(babelPluginConfig),
  commonjs(),
  json(),
  copy({
    targets: []
  })
];

if (process.env.DEV) {
  writeIndexHtmlToBuild("index.iife.js");
}

if (process.env.PROD) {
  plugins = [
    ...plugins,
    terser({
      mangle: true,
      compress: true
    }),
    bundleSize(),
    del({
      targets: ["dist/examples/markdown-parser/bundle.*.js"]
    }),
    hash({
      dest: "dist/examples/markdown-parser/bundle.[hash].js",
      callback: bundleName => {
        writeIndexHtmlToBuild(bundleName);
      }
    })
  ];
}

const mdBundles = [
  {
    input: "examples/markdown-parser/index.mjs",
    output: {
      file: "dist/examples/markdown-parser/index.iife.js",
      format: "iife",
      sourcemap: sourcemapOption,
      banner: fs.readFileSync(
        "examples/markdown-parser/assembly/as-mocks-banner.js",
        "utf8"
      )
    },
    plugins: plugins
  }
];

export default mdBundles;
