describe("as-bind", function () {
  it("should handle ArrayBuffers", async function () {
    const instance = await AsBind.instantiate(this.rawModule, {
      asc: {
        swappedConcat(a, b) {
          a = new Uint8Array(a);
          b = new Uint8Array(b);
          const result = new Uint8Array(a.length + b.length);
          result.set(b, 0);
          result.set(a, b.length);
          return result.buffer;
        },
      },
    });
    assert(
      new Uint8Array(
        instance.exports.swapAndPad(
          new Uint8Array([1, 2, 3]).buffer,
          new Uint8Array([10, 11, 12]).buffer
        )
      ).join(",") === new Uint8Array([255, 10, 11, 12, 1, 2, 3, 255]).join(",")
    );
  });
});
