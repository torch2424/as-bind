import resolve from "rollup-plugin-node-resolve";
import commonjs from "rollup-plugin-commonjs";
import babel from "rollup-plugin-babel";
import json from "rollup-plugin-json";
import compiler from "@ampproject/rollup-plugin-closure-compiler";
import bundleSize from "rollup-plugin-bundle-size";
import copy from "rollup-plugin-copy";
import hash from "rollup-plugin-hash";
import postcss from "rollup-plugin-postcss";
import postcssImport from "postcss-import";
import del from "rollup-plugin-delete";
import pkg from "./package.json";

const fs = require("fs");
const mkdirp = require("mkdirp");

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
  plugins: [
    ["@babel/plugin-proposal-class-properties"],
    ["@babel/plugin-proposal-object-rest-spread"],
    ["@babel/plugin-transform-react-jsx", { pragma: "h" }],
    ["@babel/plugin-proposal-export-default-from"]
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
    compiler(),
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
    input: "examples/markdown-parser/index.js",
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
