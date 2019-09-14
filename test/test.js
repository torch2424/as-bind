const fs = require("fs");
const assert = require("assert");
const asbind = require("../dist/asbind.cjs");

const wasmBytes = new Uint8Array(fs.readFileSync("./test/assembly/test.wasm"));

describe("asbind", () => {
  const baseImportObject = {
    test: {
      testImportString: () => {},
      testImportTwoStrings: () => {},
      testImportInt8Array: () => {},
      testImportUint8Array: () => {},
      testImportInt16Array: () => {},
      testImportUint16Array: () => {},
      testImportInt32Array: () => {},
      testImportUint32Array: () => {},
      testImportFloat32Array: () => {},
      testImportFloat64Array: () => {}
    },
    env: {
      abort: () => {}
    }
  };

  describe("instantiation", () => {
    it("should instantiate WebAssembly.Module", async () => {
      const wasmModule = await WebAssembly.compile(wasmBytes);
      wasmInstanceExports = await asbind.instantiate(
        wasmModule,
        baseImportObject
      );

      assert(wasmInstanceExports !== undefined, true);
      assert(wasmInstanceExports.helloWorld !== undefined, true);
      assert(wasmInstanceExports.__alloc !== undefined, true);
      assert(wasmInstanceExports.__release !== undefined, true);
    });

    it("should instantiate Uint8Array", async () => {
      wasmInstanceExports = await asbind.instantiate(
        wasmBytes,
        baseImportObject
      );

      assert(wasmInstanceExports !== undefined, true);
      assert(wasmInstanceExports.helloWorld !== undefined, true);
      assert(wasmInstanceExports.__alloc !== undefined, true);
      assert(wasmInstanceExports.__release !== undefined, true);
    });

    it("should instantiate Promise/Response", async () => {
      // Mock our Browser Response, and Wasm Instantiate streaming for response
      global.WebAssembly.instantiateStreaming = async (response, imports) => {
        response = await response;
        const wasmModulePromise = WebAssembly.instantiate(
          response.bytes,
          imports
        );
        return wasmModulePromise.then(wasmModule => {
          return wasmModule;
        });
      };

      wasmInstanceExports = await asbind.instantiate(
        Promise.resolve({
          bytes: wasmBytes
        }),
        baseImportObject
      );

      assert(wasmInstanceExports !== undefined, true);
      assert(wasmInstanceExports.helloWorld !== undefined, true);
      assert(wasmInstanceExports.__alloc !== undefined, true);
      assert(wasmInstanceExports.__release !== undefined, true);
    });
  });

  describe("exported functions", () => {
    let wasmInstanceExports;

    before(async () => {
      wasmInstanceExports = await asbind.instantiate(
        wasmBytes,
        baseImportObject
      );
    });

    it("should allow a function.call", () => {
      assert(asbind.call !== undefined, true);
      const helloWorldResponse = asbind.call(
        wasmInstanceExports,
        wasmInstanceExports.helloWorld,
        "asbind"
      );
      assert.equal(helloWorldResponse, "Hello asbind!");
    });

    it("should allow a function.apply", () => {
      assert(asbind.apply !== undefined, true);
      const helloWorldResponse = asbind.apply(
        wasmInstanceExports,
        wasmInstanceExports.helloWorld,
        ["asbind"]
      );
      assert.equal(helloWorldResponse, "Hello asbind!");
    });

    it("should allow multiple arguments", () => {
      const helloWorldResponse = asbind.call(
        wasmInstanceExports,
        wasmInstanceExports.helloWorldTwo,
        "asbind",
        "world"
      );
      assert.equal(helloWorldResponse, "Hello asbind and world!");
    });

    it("should handle Strings", () => {
      const helloWorldResponse = asbind.apply(
        wasmInstanceExports,
        wasmInstanceExports.helloWorld,
        ["asbind"]
      );
      assert.equal(helloWorldResponse, "Hello asbind!");
    });

    // TypedArrays
    [
      "Int8Array",
      "Uint8Array",
      "Int16Array",
      "Uint16Array",
      "Int32Array",
      "Uint32Array",
      "Float32Array",
      "Float64Array"
    ].forEach(typedArrayKey => {
      it(`should handle ${typedArrayKey}`, () => {
        const randomValue = Math.floor(Math.random() * 10);
        const array = global[typedArrayKey].from([randomValue]);
        const arrayMapResponse = asbind.apply(
          wasmInstanceExports,
          wasmInstanceExports["map" + typedArrayKey],
          [array]
        );

        // Ensure it is a type array
        assert.equal(arrayMapResponse.byteLength !== undefined, true);

        // Ensure it has the correct values
        assert.equal(arrayMapResponse[0], randomValue * 2);
      });
    });
  });

  describe("importObject functions", () => {
    let wasmInstanceExports;
    let testImportCalledWith = [];

    before(async () => {
      const wrappedImportObjectFunction = asbind.wrapImportObjectFunction(
        value => {
          testImportCalledWith = [value];
        }
      );

      const wrappedBaseImportObject = {
        ...baseImportObject,
        test: {
          testImportString: wrappedImportObjectFunction,
          testImportTwoStrings: asbind.wrapImportObjectFunction(
            (value1, value2) => {
              testImportCalledWith = [value1, value2];
            }
          ),
          testImportInt8Array: wrappedImportObjectFunction,
          testImportUint8Array: wrappedImportObjectFunction,
          testImportInt16Array: wrappedImportObjectFunction,
          testImportUint16Array: wrappedImportObjectFunction,
          testImportInt32Array: wrappedImportObjectFunction,
          testImportUint32Array: wrappedImportObjectFunction,
          testImportFloat32Array: wrappedImportObjectFunction,
          testImportFloat64Array: wrappedImportObjectFunction
        }
      };

      wasmInstanceExports = await asbind.instantiate(
        wasmBytes,
        wrappedBaseImportObject
      );
    });

    afterEach(() => {
      testImportCalledWith = [];
    });

    it("should handle strings being passed to the import object", () => {
      asbind.apply(
        wasmInstanceExports,
        wasmInstanceExports.callTestImportString,
        ["asbind"]
      );
      assert.equal(testImportCalledWith[0], "asbind");
    });

    it("should handle multiple values being passed to the import object", () => {
      asbind.apply(
        wasmInstanceExports,
        wasmInstanceExports.callTestImportTwoStrings,
        ["asbind", "asbind2"]
      );
      assert.equal(testImportCalledWith[0], "asbind");
      assert.equal(testImportCalledWith[1], "asbind2");
    });

    // TypedArrays
    [
      "Int8Array",
      "Uint8Array",
      "Int16Array",
      "Uint16Array",
      "Int32Array",
      "Uint32Array",
      "Float32Array",
      "Float64Array"
    ].forEach(typedArrayKey => {
      it(`should handle ${typedArrayKey} being passed to the import object`, () => {
        const randomValue = Math.floor(Math.random() * 10);
        const array = global[typedArrayKey].from([randomValue]);
        const arrayMapResponse = asbind.apply(
          wasmInstanceExports,
          wasmInstanceExports["callTestImport" + typedArrayKey],
          [array]
        );
        // Ensure it is a typed array
        assert.equal(testImportCalledWith[0].byteLength !== undefined, true);
        // Ensure it has the correct values
        assert.equal(testImportCalledWith[0][0], randomValue);
      });
    });
  });
});
