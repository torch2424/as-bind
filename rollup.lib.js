import resolve from 'rollup-plugin-node-resolve';
import commonjs from 'rollup-plugin-commonjs';
import babel from 'rollup-plugin-babel';
import json from 'rollup-plugin-json';
import compiler from '@ampproject/rollup-plugin-closure-compiler';
import bundleSize from 'rollup-plugin-bundle-size';
import pkg from './package.json';

const sourcemapOption = process.env.PROD ? undefined : "inline";

const babelPluginConfig = {
  // so Rollup can convert unsupported es6 code to es5
  exclude: ['node_modules/**'],
  plugins: [
    ['@babel/plugin-proposal-class-properties'],
    ['@babel/plugin-proposal-object-rest-spread'],
  ]
};

let plugins = [
  resolve(),
  commonjs(),
  json(),
  babel(babelPluginConfig)
]

if (process.env.PROD) {
  plugins = [
    ...plugins,
    compiler(),
    bundleSize()
  ]
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
      file: pkg.browser,
      format: "iife",
      sourcemap: sourcemapOption,
      name: "asbuild"
    },
    watch: {
      clearScreen: false
    },
    plugins: plugins
  }
];

export default libBundles;
