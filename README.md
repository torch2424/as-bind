# as-bind

Library to handle passing high-level data structures between AssemblyScript and JavaScript. 🤝🚀

![Asbind Markdown Parser Demo Gif](./assets/asbind.gif)

## Installation

You can install as-bind in your project by running the following:

`npm install --save as-bind`

## Quick Start

**In your Assemblyscript**

1. Export everything from the asbind assemblyscript library:

```
// This should be in your entry point file for your Assemblyscript project


```

# Compatibility notes

Supported types (params and returns on exported functions FROM Assemblyscript):

Strings, TypedArrays

Supported types (params on import object functions. RETURNS NOT SUPPORTED):

Strings, TypedArrays

# API Planning Notes

Maybe not asbind? Yes, as bind it matches up with what wasm bndgen says

Only supports the `--runtime full`, and `--runtime stub` flag. And should, because anything else would mean that you DO NOT want to create objects externally to your wasm module.

Simply need to wrap the docs from: https://docs.assemblyscript.org/details/runtime and we should be good to go!
