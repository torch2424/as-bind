# asbind
Library to handle passing high-level data structures between AssemblyScript and JavaScript

# Notes

Maybe not asbind? Yes, as bind it matches up with what wasm bndgen says

Only supports the `--runtime full`, and `--runtime stub` flag. And should, because anything else would mean that you DO NOT want to create objects externally to your wasm module. 

Simply need to wrap the docs from: https://docs.assemblyscript.org/details/runtime and we should be good to go!

The plan:

Simply write some tests to decide on an API. Then do the implementation. Seems like we may just want to map JS Types to AS Types where we can, and make a table of what is supported, and what is not :smile:

First check instance of Types we want to support. Then, check the primitive, and if that does not work, throw an error.

Usage:

```js
// JS
import asbind from "asbind";

wasmModule.exports = asbind.bind(wasmModule.exports);
```

```typescript
export * from "asbind"

// Other stuff
```

Honestly, just get it working first, then design API.
