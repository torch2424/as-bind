describe("as-bind", function() {
  it("should handle array", async function() {
    const instance = await AsBind.instantiate(this.rawModule, {
      asc: {
        swappedConcat(a, b) {
          return [].concat(b, a);
        }
      }
    });
    assert(
      instance.exports.swapAndPad([1, 2, 3], [10, 11, 12]).join(",") ===
        [255, 10, 11, 12, 1, 2, 3, 255].join(",")
    );
  });
});
