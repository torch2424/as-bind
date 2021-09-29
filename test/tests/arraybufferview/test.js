describe("as-bind", function () {
  it("should handle Uint8Arrays and Float32Array", async function () {
    const instance = await AsBind.instantiate(this.rawModule, {
      asc: {
        swappedConcat(a, b) {
          const result = new Uint8Array(a.length + b.length);
          result.set(b, 0);
          result.set(a, b.length);
          return result;
        },
        testF32Arr(data) {
          assert(data instanceof Float32Array);
          assert(data[0] == 0.5);
        }
      }
    });
    assert(
      instance.exports
        .swapAndPad(new Uint8Array([1, 2, 3]), new Uint8Array([10, 11, 12]))
        .join(",") === new Uint8Array([255, 10, 11, 12, 1, 2, 3, 255]).join(",")
    );
  });
});
