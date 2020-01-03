# as-bind

Library to handle passing high-level data structures between AssemblyScript and JavaScript. 🤝🚀

![Asbind Markdown Parser Demo Gif](./assets/asbind.gif)

## Installation

You can install as-bind in your project by running the following:

`npm install --save as-bind`

## Quick Start

**1. In your Assemblyscript**

Export everything from the asbind assemblyscript library:

```
// This should be in your entry point file for your Assemblyscript project

// '../node_modules/as-bind/*' should be the relative path to this directory in your project
export * from '../node_modules/as-bind/lib/assembly/asbind.ts'
```

After this, let's export an example function we can try:

```
export function myExportedFunctionThatTakesAString(value: string): string {
  return 'AsBind: ' + value;
}
```

**2. In your Javascript**

In the browser using ESM Syntax:

```
import {AsBind} from 'as-bind';

const wasm = fetch('./path-to-my-wasm.wasm');

const asyncTask = async () => {
  const asBindInstance = await AsBind.instantiate(wasm);

  // You can now use your wasm / asbind instance!
  const response = asBindInstance.exports.myExportedFunctionThatTakesAString('Hello World!');
  console.log(response); // AsBind: Hello World!
}
asyncTask();
```

Or we can also use Node:

```
const AsBind = require('as-bind');
const fs = require('fs');

const wasm = fs.readFileSync('./path-to-my-wasm.wasm');

const asyncTask = async () => {
  const asBindInstance = await AsBind.instantiate(wasm);

  // You can now use your wasm / asbind instance!
  const response = asBindInstance.exports.myExportedFunctionThatTakesAString('Hello World!');
  console.log(response); // AsBind: Hello World!
}
asyncTask();
```

## Supported Data Types

TODO

Supported types (params and returns on exported functions FROM Assemblyscript):

Strings, TypedArrays

Supported types (params on import object functions. RETURNS NOT SUPPORTED):

Strings, TypedArrays

## Supported AssemblyScript Runtime Modes

TODO

Only supports the `--runtime full`, and `--runtime stub` flag. And should, because anything else would mean that you DO NOT want to create objects externally to your wasm module.

Simply need to wrap the docs from: https://docs.assemblyscript.org/details/runtime and we should be good to go!

## Performance

TODO

## Reference API

TODO

Be sure to mention speculative execution

## License
