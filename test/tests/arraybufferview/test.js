describe("as-bind", function() {
  it("should handle Uint8Arrays", async function() {
    const instance = await AsBind.instantiate(this.rawModule, {
      asc: {
        imported(a, b) {
          const result = new Uint8Array(a.length + b.length);
          result.set(b, 0);
          result.set(a, b.length);
          return result;
        }
      }
    });
    assert(
      instance.exports
        .exported(new Uint8Array([1, 2, 3]), new Uint8Array([10, 11, 12]))
        .join(",") === new Uint8Array([255, 10, 11, 12, 1, 2, 3, 255]).join(",")
    );
  });
});
