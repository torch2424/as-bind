const fs = require("fs");
const assert = require("assert");
const { AsBind } = require("../dist/as-bind.cjs");

const wasmBytes = new Uint8Array(fs.readFileSync("./test/assembly/test.wasm"));
const wasmBytesNoEntry = new Uint8Array(
  fs.readFileSync("./test/assembly/test-no-entry.wasm")
);

describe("asbind", () => {
  const baseImportObject = {
    test: {
      testImportString: () => {},
      testImportTwoStrings: () => {},
      testImportReturnNumber: () => -1,
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

  describe("Issues", () => {
    it("#28", async () => {
      const wasmModule = await WebAssembly.compile(wasmBytes);
      asbindInstance = await AsBind.instantiate(wasmModule, baseImportObject);

      const arr = Float64Array.from([1, 2, 3]);
      const response = asbindInstance.exports.issue28(arr);
      assert(response, 4);
    });
  });

  describe("instantiation", () => {
    it("should error when instantiating a module that does not include the as-bind entryfile", async () => {
      const wasmModule = await WebAssembly.compile(wasmBytesNoEntry);

      let didInstantiate = false;
      try {
        await AsBind.instantiate(wasmModule, baseImportObject);
        didInstantiate = true;
      } catch (err) {
        // Hooray! We caught the base instantiation
        console.log("Expected Test Error: ", err.message);
      }
      if (didInstantiate) {
        throw new Error("Was able to instantiate the incorrectly built test");
      }

      let didInstantiateSync = false;
      try {
        AsBind.instantiateSync(wasmModule, baseImportObject);
        didInstantiateSync = true;
      } catch (err) {
        // Hooray! We caught the base instantiation
        console.log("Expected Test Error: ", err.message);
      }
      if (didInstantiateSync) {
        throw new Error(
          "Was able to instantiateSync the incorrectly built test"
        );
      }
    });

    it("should instantiate WebAssembly.Module", async () => {
      const wasmModule = await WebAssembly.compile(wasmBytes);
      asbindInstance = await AsBind.instantiate(wasmModule, baseImportObject);

      assert(asbindInstance.exports !== undefined, true);
      assert(asbindInstance.exports.helloWorld !== undefined, true);
      assert(asbindInstance.exports.__alloc !== undefined, true);
      assert(asbindInstance.exports.__release !== undefined, true);
    });

    it("should instantiateSync WebAssembly.Module", async () => {
      const wasmModule = await WebAssembly.compile(wasmBytes);
      asbindInstance = AsBind.instantiateSync(wasmModule, baseImportObject);

      assert(asbindInstance.exports !== undefined, true);
      assert(asbindInstance.exports.helloWorld !== undefined, true);
      assert(asbindInstance.exports.__alloc !== undefined, true);
      assert(asbindInstance.exports.__release !== undefined, true);
    });

    it("should instantiate Uint8Array", async () => {
      asbindInstance = await AsBind.instantiate(wasmBytes, baseImportObject);

      assert(asbindInstance.exports !== undefined, true);
      assert(asbindInstance.exports.helloWorld !== undefined, true);
      assert(asbindInstance.exports.__alloc !== undefined, true);
      assert(asbindInstance.exports.__release !== undefined, true);
    });

    it("should instantiateSync Uint8Array", async () => {
      asbindInstance = AsBind.instantiateSync(wasmBytes, baseImportObject);

      assert(asbindInstance.exports !== undefined, true);
      assert(asbindInstance.exports.helloWorld !== undefined, true);
      assert(asbindInstance.exports.__alloc !== undefined, true);
      assert(asbindInstance.exports.__release !== undefined, true);
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

      asbindInstance = await AsBind.instantiate(
        Promise.resolve({
          bytes: wasmBytes
        }),
        baseImportObject
      );

      assert(asbindInstance.exports !== undefined, true);
      assert(asbindInstance.exports.helloWorld !== undefined, true);
      assert(asbindInstance.exports.__alloc !== undefined, true);
      assert(asbindInstance.exports.__release !== undefined, true);
    });
  });

  describe("exported functions", () => {
    let asbindInstance;

    beforeEach(async () => {
      asbindInstance = await AsBind.instantiate(wasmBytes, baseImportObject);
    });

    it("should allow passing high level types to asbind instance exports", () => {
      assert(asbindInstance.exports.helloWorld !== undefined, true);
      const response = asbindInstance.exports.helloWorld("asbind");
      assert.equal(response, "Hello asbind!");
    });

    it("should allow multiple arguments", () => {
      const response = asbindInstance.exports.helloWorldTwo("asbind", "world");
      assert.equal(response, "Hello asbind and world!");
    });

    it("should allow passing in a ref and a number, and return a ref", () => {
      const response = asbindInstance.exports.refAndNumberArgsReturnsRef(
        "asbind",
        24
      );
      assert.equal(response, "Ref: asbind Number: 24");
    });

    it("should allow passing in a number and a ref, and return a ref", () => {
      const response = asbindInstance.exports.numberAndRefArgsReturnsRef(
        24,
        "asbind"
      );
      assert.equal(response, "Ref: asbind Number: 24");
    });

    it("should allow passing in a number and a ref, and return a number", () => {
      // TODO: The response here can be detected as a string?
      // If the first param is 24, this will give an expected response of 30.
      // In this case, the response is 30, but the original export returns 30?
      const response = asbindInstance.exports.numberAndRefArgsReturnsNumber(
        30,
        "asbind"
      );
      assert.equal(response, 36);
    });

    it("should handle Strings", () => {
      const response = asbindInstance.exports.helloWorld("asbind");
      assert.equal(response, "Hello asbind!");
    });

    // Number Types
    [
      "Int32",
      // "Int64" - BigInt not supported in Wasm Currently: WebAssembly/JS-BigInt-integration
      "Float32",
      "Float64"
    ].forEach(numberKey => {
      it(`should support passing and returning ${numberKey}`, () => {
        const randomValue = Math.floor(Math.random() * 10);
        const response = asbindInstance.exports[numberKey + "Support"](
          randomValue
        );
        assert.equal(response, randomValue + 1);
      });
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
        const array = global[typedArrayKey].from([
          randomValue,
          randomValue,
          randomValue
        ]);
        const arrayMapResponse = asbindInstance.exports["map" + typedArrayKey](
          array
        );

        // Ensure it is a type array
        assert.equal(arrayMapResponse.byteLength !== undefined, true);

        // Ensure it has the correct values
        assert.equal(arrayMapResponse[0], randomValue * 2);
      });
    });
  });

  describe("importObject functions", () => {
    let asbindInstance;
    let testImportCalledWith = [];

    before(async () => {
      const importObjectFunction = value => {
        testImportCalledWith = [value].slice();
      };

      const wrappedBaseImportObject = {
        ...baseImportObject,
        test: {
          testImportString: importObjectFunction,
          testImportTwoStrings: (value1, value2) => {
            testImportCalledWith = [value1, value2];
          },
          testImportReturnNumber: () => -1,
          testImportInt8Array: importObjectFunction,
          testImportUint8Array: importObjectFunction,
          testImportInt16Array: importObjectFunction,
          testImportUint16Array: importObjectFunction,
          testImportInt32Array: importObjectFunction,
          testImportUint32Array: importObjectFunction,
          testImportFloat32Array: importObjectFunction,
          testImportFloat64Array: importObjectFunction
        }
      };

      asbindInstance = await AsBind.instantiate(
        wasmBytes,
        wrappedBaseImportObject
      );
    });

    afterEach(() => {
      testImportCalledWith = [];
    });

    it("should handle strings being passed to the import object", () => {
      asbindInstance.exports.callTestImportString("asbind");
      assert.equal(testImportCalledWith[0], "asbind");
    });

    it("should handle multiple values being passed to the import object", () => {
      asbindInstance.exports.callTestImportTwoStrings("asbind", "asbind2");
      assert.equal(testImportCalledWith[0], "asbind");
      assert.equal(testImportCalledWith[1], "asbind2");
    });

    it("should allow numbers to be returned from the importObject", () => {
      const response = asbindInstance.exports.callTestImportReturnNumber();
      assert.equal(response, -1);
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
        const randomValue = Math.floor(Math.random() * 10) + 1;
        const array = global[typedArrayKey].from([randomValue]);
        const arrayMapResponse = asbindInstance.exports[
          "callTestImport" + typedArrayKey
        ](array);
        // Ensure it is a typed array
        assert.equal(testImportCalledWith[0].byteLength !== undefined, true);
        // Ensure it has the correct values
        assert.equal(testImportCalledWith[0][0], randomValue);
      });
    });
  });

  describe("type caching", () => {
    let asbindInstance;
    let testImportCalledWith = [];

    beforeEach(async () => {
      const importObjectFunction = value => {
        testImportCalledWith = [value];
      };

      wrappedBaseImportObject = {
        ...baseImportObject,
        test: {
          testImportString: importObjectFunction,
          testImportTwoStrings: (value1, value2) => {
            testImportCalledWith = [value1, value2];
          },
          testImportReturnNumber: () => -1,
          testImportInt8Array: importObjectFunction,
          testImportUint8Array: importObjectFunction,
          testImportInt16Array: importObjectFunction,
          testImportUint16Array: importObjectFunction,
          testImportInt32Array: importObjectFunction,
          testImportUint32Array: importObjectFunction,
          testImportFloat32Array: importObjectFunction,
          testImportFloat64Array: importObjectFunction
        }
      };

      asbindInstance = await AsBind.instantiate(
        wasmBytes,
        wrappedBaseImportObject
      );
    });

    it("should cache bound export function parameter types", () => {
      assert.equal(asbindInstance.exports.helloWorldTwo.shouldCacheTypes, true);

      const response = asbindInstance.exports.helloWorldTwo("asbind", "world");
      assert.equal(response, "Hello asbind and world!");

      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedArgTypes.length,
        2
      );
      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedArgTypes[0].key,
        "STRING"
      );
      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedArgTypes[1].key,
        "STRING"
      );
    });

    it("should cache bound export function return types", () => {
      assert.equal(asbindInstance.exports.helloWorldTwo.shouldCacheTypes, true);

      const response = asbindInstance.exports.helloWorldTwo("asbind", "world");
      assert.equal(response, "Hello asbind and world!");

      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedReturnTypes.length,
        1
      );
      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedReturnTypes[0].key,
        "STRING"
      );
    });

    it("should cache bound import function parameter types", () => {
      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.shouldCacheTypes,
        true
      );
      asbindInstance.exports.callTestImportTwoStrings("asbind", "asbind2");
      assert.equal(testImportCalledWith[0], "asbind");
      assert.equal(testImportCalledWith[1], "asbind2");

      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.cachedArgTypes.length,
        2
      );
      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.cachedArgTypes[0].key,
        "STRING"
      );
      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.cachedArgTypes[1].key,
        "STRING"
      );
    });

    // Test cache hits on export params
    it("should hit cache for export function parameter types", () => {
      assert.equal(asbindInstance.exports.helloWorldTwo.shouldCacheTypes, true);

      const response = asbindInstance.exports.helloWorldTwo("asbind", "world");
      assert.equal(response, "Hello asbind and world!");

      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedArgTypes.length,
        2
      );
      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedArgTypes[0].key,
        "STRING"
      );
      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedArgTypes[1].key,
        "STRING"
      );

      // Whenever there is a cache miss, as new cached type is assigned, thus, === on objects
      // Will check the reference, not the contents, so if === is the same, than we had a hit!
      const oldCachedType =
        asbindInstance.exports.helloWorldTwo.cachedArgTypes[0];
      asbindInstance.exports.helloWorldTwo("asbind", "world");

      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedArgTypes[0] ===
          oldCachedType,
        true
      );
    });

    it("should hit the cache for bound export function return types", () => {
      assert.equal(asbindInstance.exports.helloWorldTwo.shouldCacheTypes, true);

      const response = asbindInstance.exports.helloWorldTwo("asbind", "world");
      assert.equal(response, "Hello asbind and world!");

      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedReturnTypes.length,
        1
      );
      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedReturnTypes[0].key,
        "STRING"
      );

      // Whenever there is a cache miss, as new cached type is assigned, thus, === on objects
      // Will check the reference, not the contents, so if === is the same, than we had a hit!
      const oldCachedType =
        asbindInstance.exports.helloWorldTwo.cachedReturnTypes[0];
      asbindInstance.exports.helloWorldTwo("asbind", "world");

      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedReturnTypes[0] ===
          oldCachedType,
        true
      );
    });

    it("should hit the cache for bound import function parameter types", () => {
      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.shouldCacheTypes,
        true
      );
      asbindInstance.exports.callTestImportTwoStrings("asbind", "asbind2");
      assert.equal(testImportCalledWith[0], "asbind");
      assert.equal(testImportCalledWith[1], "asbind2");

      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.cachedArgTypes.length,
        2
      );
      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.cachedArgTypes[0].key,
        "STRING"
      );
      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.cachedArgTypes[1].key,
        "STRING"
      );

      const oldCachedType =
        wrappedBaseImportObject.test.testImportTwoStrings.cachedArgTypes;
      asbindInstance.exports.callTestImportTwoStrings("asbind", "asbind2");

      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.cachedArgTypes ===
          oldCachedType,
        true
      );
    });

    it("should support disabling the export type cache", () => {
      assert.equal(asbindInstance.exports.helloWorldTwo.shouldCacheTypes, true);
      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedArgTypes.length,
        0
      );

      asbindInstance.disableExportFunctionTypeCaching();

      assert.equal(
        asbindInstance.exports.helloWorldTwo.shouldCacheTypes,
        false
      );

      const response = asbindInstance.exports.helloWorldTwo("asbind", "world");
      assert.equal(response, "Hello asbind and world!");

      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedArgTypes.length,
        0
      );
    });

    it("should support re-enabling the export type cache", () => {
      assert.equal(asbindInstance.exports.helloWorldTwo.shouldCacheTypes, true);
      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedArgTypes.length,
        0
      );

      asbindInstance.disableExportFunctionTypeCaching();

      assert.equal(
        asbindInstance.exports.helloWorldTwo.shouldCacheTypes,
        false
      );

      const response = asbindInstance.exports.helloWorldTwo("asbind", "world");
      assert.equal(response, "Hello asbind and world!");

      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedArgTypes.length,
        0
      );

      asbindInstance.enableExportFunctionTypeCaching();

      assert.equal(asbindInstance.exports.helloWorldTwo.shouldCacheTypes, true);
      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedArgTypes.length,
        0
      );

      asbindInstance.exports.helloWorldTwo("asbind", "world");
      assert.equal(response, "Hello asbind and world!");

      assert.equal(
        asbindInstance.exports.helloWorldTwo.cachedArgTypes.length,
        2
      );
    });

    it("should support disabling the import type cache", () => {
      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.shouldCacheTypes,
        true
      );
      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.cachedArgTypes.length,
        0
      );

      asbindInstance.disableImportFunctionTypeCaching();

      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.shouldCacheTypes,
        false
      );

      asbindInstance.exports.callTestImportTwoStrings("asbind", "asbind2");

      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.cachedArgTypes.length,
        0
      );
    });

    it("should support re-enabling the import type cache", () => {
      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.shouldCacheTypes,
        true
      );
      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.cachedArgTypes.length,
        0
      );

      asbindInstance.disableImportFunctionTypeCaching();

      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.shouldCacheTypes,
        false
      );

      asbindInstance.exports.callTestImportTwoStrings("asbind", "asbind2");

      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.cachedArgTypes.length,
        0
      );

      asbindInstance.enableImportFunctionTypeCaching();

      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.shouldCacheTypes,
        true
      );

      asbindInstance.exports.callTestImportTwoStrings("asbind", "asbind2");

      assert.equal(
        wrappedBaseImportObject.test.testImportTwoStrings.cachedArgTypes.length,
        2
      );
    });
  });

  describe("Unsafe Return Value", () => {
    let asbindInstance;
    let testImportCalledWith = [];

    beforeEach(async () => {
      const importObjectFunction = value => {
        testImportCalledWith = [value];
      };

      wrappedBaseImportObject = {
        ...baseImportObject,
        test: {
          testImportString: importObjectFunction,
          testImportTwoStrings: (value1, value2) => {
            testImportCalledWith = [value1, value2];
          },
          testImportReturnNumber: () => -1,
          testImportInt8Array: importObjectFunction,
          testImportUint8Array: importObjectFunction,
          testImportInt16Array: importObjectFunction,
          testImportUint16Array: importObjectFunction,
          testImportInt32Array: importObjectFunction,
          testImportUint32Array: importObjectFunction,
          testImportFloat32Array: importObjectFunction,
          testImportFloat64Array: importObjectFunction
        }
      };

      asbindInstance = await AsBind.instantiate(
        wasmBytes,
        wrappedBaseImportObject
      );
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
      it(`should handle ${typedArrayKey} being returned unsafe`, () => {
        const exportName = `map${typedArrayKey}`;

        assert.equal(
          asbindInstance.exports[exportName].unsafeReturnValue,
          false
        );

        let randomValue;
        let array;
        let arrayMapResponse;

        randomValue = Math.floor(Math.random() * 10) + 1;
        array = global[typedArrayKey].from([randomValue]);
        arrayMapResponse = asbindInstance.exports[exportName](array);

        // Check to make sure it returns an arrary
        assert(arrayMapResponse.length > 0);

        asbindInstance.exports[exportName].unsafeReturnValue = true;

        randomValue = Math.floor(Math.random() * 10) + 1;
        array = global[typedArrayKey].from([randomValue]);
        arrayMapResponse = asbindInstance.exports[exportName](array);

        // Assert it now returns a pointer and a value
        assert(arrayMapResponse.ptr !== undefined);
        assert(arrayMapResponse.value !== undefined);
      });
    });
  });
});
