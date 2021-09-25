// If you are using a Javascript bundler, use the ESM bundle with import syntax
import * as AsBind from "as-bind";

// If you are not using a bundler add a <script> tag to your HTML
// Where the `src` points to the iife bundle (as-bind.iife.js), for example: https://unpkg.com/as-bind
// Then, INSTEAD of using the import syntax, do: `const { AsBind } = AsBindIIFE;`

const wasm = fetch("./path-to-my-wasm.wasm");

const asyncTask = async () => {
  // There is a buge with WebAssembly.compileStreaming with pupeteer, so going to
  // Get the Wasm Binary here and instantiate sync. This is slightly different
  // from the README unfortunately
  const wasmResponse = await wasm;
  const wasmBuffer = await wasmResponse.arrayBuffer();

  const asBindInstance = await AsBind.instantiate(wasmBuffer);

  // You can now use your wasm / as-bind instance!
  const response =
    asBindInstance.exports.myExportedFunctionThatTakesAString("Hello World!");
  console.log(response); // AsBind: Hello World!
};
asyncTask();
