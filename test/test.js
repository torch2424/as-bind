const fs = require('fs');
const assert = require('assert');
const asbuild = require('../dist/asbuild.cjs');

const wasmBytes = new Uint8Array(fs.readFileSync('./test/assembly/test.wasm'));

describe('asbind', () => {

  let wasmInstance;

  before(async () => {
    const wasmModule = await WebAssembly.instantiate(
      wasmBytes, 
      {
        env: {
          abort: () => {}
        }
      }
    );

    wasmInstance = wasmModule.instance;
  });

  it('should handle strings', () => {
    console.log(asbuild);
    console.log(asbuild.call(wasmInstance.exports, wasmInstance.exports.add, "Hello World"));
    assert.equal(true, true);
  });
});


