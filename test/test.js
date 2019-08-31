const fs = require('fs');
const assert = require('assert');
const asbind = require('../dist/asbind.cjs');

const wasmBytes = new Uint8Array(fs.readFileSync('./test/assembly/test.wasm'));

describe('asbind', () => {

  let wasmInstanceExports;

  before(async () => {
    wasmInstanceExports = asbind.instantiateBuffer(
      wasmBytes, 
      {
        env: {
          abort: () => {}
        }
      }
    );

    console.log(wasmInstanceExports);
  });

  it('should handle strings', () => {
    console.log(asbind.call(wasmInstanceExports, wasmInstanceExports.helloWorld, "asbind"));
    assert.equal(true, true);
  });
});


