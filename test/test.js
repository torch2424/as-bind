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
  });

  it('should allow a function.call', () => {
    assert(asbind.call !== undefined, true);
    const helloWorldResponse = asbind.call(
      wasmInstanceExports, 
      wasmInstanceExports.helloWorld, 
      "asbind"
    );
    assert.equal(helloWorldResponse, "Hello asbind!");
  })

  it('should allow a function.apply', () => {
    assert(asbind.apply !== undefined, true);
    const helloWorldResponse = asbind.apply(
      wasmInstanceExports, 
      wasmInstanceExports.helloWorld, 
      ["asbind"]
    );
    assert.equal(helloWorldResponse, "Hello asbind!");
  });

  it('should allow multiple arguments', () => {
    const helloWorldResponse = asbind.call(
      wasmInstanceExports, 
      wasmInstanceExports.helloWorldTwo, 
      "asbind",
      "world"
    );
    assert.equal(helloWorldResponse, "Hello asbind and world!");
  });


  it('should handle strings', () => {
    const helloWorldResponse = asbind.apply(
      wasmInstanceExports, 
      wasmInstanceExports.helloWorld, 
      ["asbind"]
    );
    assert.equal(helloWorldResponse, "Hello asbind!");
  });

  it('should handle Uint8Array', () => {
    const array = Uint8Array.from([24]);
    const arrayMapResponse = asbind.apply(
      wasmInstanceExports, 
      wasmInstanceExports.mapUint8Array, 
      [array]
    );
    assert.equal(arrayMapResponse[0], 48);
  });

});


