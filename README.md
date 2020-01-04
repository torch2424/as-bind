# as-bind

<!-- Badges -->

[![Build Status](https://travis-ci.org/torch2424/as-bind.svg?branch=master)](https://travis-ci.org/torch2424/as-bind)
![npm bundle size (minified)](https://img.shields.io/bundlephobia/min/as-bind.svg)
![npm](https://img.shields.io/npm/dt/as-bind.svg)
![npm version](https://img.shields.io/npm/v/as-bind.svg)
![GitHub](https://img.shields.io/github/license/torch2424/as-bind.svg)

Isomorphic library to handle passing high-level data structures between AssemblyScript and JavaScript. 🤝🚀

![Asbind Markdown Parser Demo Gif](./assets/asbind.gif)

## Features

- The library is Isomorphic. Meaning it supports both the Browser, and Node! And has ESM, CommonJS, and IIFE bundles! 🌐
- Wraps around the [AssemblyScript Loader](https://github.com/AssemblyScript/assemblyscript/tree/master/lib/loader). The loader handles all the heavy-lifting of passing data into WebAssembly linear memory. 💪
- Wraps around imported JavaScript functions, and exported AssemblyScript functions of the AssemblyScript Wasm Module. This allows high-level data types to be passed to AssemblyScript functions, without having to touch Wasm memory! 🤯
- The library works at runtime, so no generated code that you have to maintain and try to get to work in your environment. 🏃
- Maintains great performance (relative to generating the corresponding JavaScript code), by using [Speculative Execution](https://en.wikipedia.org/wiki/Speculative_execution), and caching types passed between functions. 🤔
- The library is [< 5KB (minified and gzip'd)](https://bundlephobia.com/result?p=as-bind) and tree-shakeable! 📦🌲
- This library is currently the [wasm-bindgen](https://github.com/rustwasm/wasm-bindgen) in the Rust/Wasm ecosystem, for AssemblyScript. 😀

## Installation

You can install as-bind in your project by running the following:

`npm install --save as-bind`

## Quick Start

**1. In your Assemblyscript**

Export everything from the asbind assemblyscript library:

```typescript
// This should be in your entry point file for your Assemblyscript project

// '../node_modules/as-bind/*' should be the relative path to this directory in your project
export * from "../node_modules/as-bind/lib/assembly/asbind.ts";
```

After this, let's export an example function we can try:

```typescript
export function myExportedFunctionThatTakesAString(value: string): string {
  return "AsBind: " + value;
}
```

**2. In your Javascript**

In the browser using ESM Syntax:

```javascript
import { AsBind } from "as-bind";

const wasm = fetch("./path-to-my-wasm.wasm");

const asyncTask = async () => {
  const asBindInstance = await AsBind.instantiate(wasm);

  // You can now use your wasm / asbind instance!
  const response = asBindInstance.exports.myExportedFunctionThatTakesAString(
    "Hello World!"
  );
  console.log(response); // AsBind: Hello World!
};
asyncTask();
```

Or we can also use Node:

```javascript
const { AsBind } = require("as-bind");
const fs = require("fs");

const wasm = fs.readFileSync("./path-to-my-wasm.wasm");

const asyncTask = async () => {
  const asBindInstance = await AsBind.instantiate(wasm);

  // You can now use your wasm / asbind instance!
  const response = asBindInstance.exports.myExportedFunctionThatTakesAString(
    "Hello World!"
  );
  console.log(response); // AsBind: Hello World!
};
asyncTask();
```

## Motivation

This library was inspired by several chats I had with some awesome buddies of mine in the WebAssembly Communitty:

- Till Schneidereit and I had a chat about [WasmBoy](https://github.com/torch2424/wasmboy), and about how I had a really good experience writing the emulator, even though I had to do my own memory management. But they helped me realize, building something low level isn't that bad with manual memory management, but building something like a markdown parser would be very tedious since you have to manually write the string back and forth. Which then inspired this library, and it's [markdown parser demo](https://torch2424.github.io/as-bind/).

- While I was building [WasmByExample](https://wasmbyexample.dev/?programmingLanguage=assemblyscript) I wanted to start building the "High Level Data Structures" section. I then realized how much work it would be to maintain code for passing data between WebAssembly Linear memory would be for each data type, and how much work it would be to created each individual example. Then, my buddy [Ashley Williams](https://twitter.com/ag_dubs) helped me realize, if your docs are becoming too complex, it may be a good idea to write a tool. That way you have less docs to write, and users will have an easier time using your stuff!

Thus, this library was made to help AssemblyScript/JavaScript users build awesome things! 😄🎉

## Supported Data Types

**TL;DR:** Currently Numbers, Strings, and Typed Arrays are supported. Returning a high-level data type from an imported JavaScript function, and passing AssemblyScript Classes will be coming later.

<!-- Generated from: https://www.tablesgenerator.com/markdown_tables# -->

| Function & Direction                        | Number (Integers and Floats) | Strings | Int8Array | Uint8Array | Int16Array | UInt16Array | Int32Array | Uint32Array | Float32Array | Float64Array | AssemblyScript Classes |
| ------------------------------------------- | ---------------------------- | ------- | --------- | ---------- | ---------- | ----------- | ---------- | ----------- | ------------ | ------------ | ---------------------- |
| Exported AssemblyScript Function Parameters | ✔️                           | ✔️      | ✔️        | ✔️         | ✔️         | ✔️          | ✔️         | ✔️          | ✔️           | ✔️           | ❌                     |
| Exported AssemblyScript Function Return     | ✔️                           | ✔️      | ✔️        | ✔️         | ✔️         | ✔️          | ✔️         | ✔️          | ✔️           | ✔️           | ❌                     |
| Imported JavaScript Function Paramters      | ✔️                           | ✔️      | ✔️        | ✔️         | ✔️         | ✔️          | ✔️         | ✔️          | ✔️           | ✔️           | ❌                     |
| Imported JavaScript Function Return         | ✔️                           | ❌      | ❌        | ❌         | ❌         | ❌          | ❌         | ❌          | ❌           | ❌           | ❌                     |

## Supported AssemblyScript Runtime Variants

as-bind only supports AssemblyScript modules compiled with the `--runtime full` (default), and `--runtime stub` flags. These should be the only supported modes, because these runtime variants specify that you would like types / objects to be created externally as well as internally. Other runtime variants would mean that you DO NOT want anything externally created for your wasm module.

Please see the [AssemblyScript Docs on runtime variants](https://docs.assemblyscript.org/details/runtime) for more information.

## Performance

TODO

## Reference API

TODO

Be sure to mention speculative execution stuff.

## License

[MIT](https://oss.ninja/mit/torch2424).
