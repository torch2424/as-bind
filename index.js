const fs = require("fs");
const compiled = new WebAssembly.Module(fs.readFileSync(__dirname + "/build/optimized.wasm"));
const imports = {
  env: {
    abort: () => {}
  }
};
const wasmInstance = new WebAssembly.Instance(compiled, imports);
wasmInstance.exports._asbind_add = wasmInstance.exports.add;
wasmInstance.exports.add = (x, y) => {
  console.log(wasmInstance.exports._asbind_add(x, y));
}

console.log(wasmInstance.exports);
console.log(wasmInstance.exports.add(3, 2));

