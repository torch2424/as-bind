describe("as-bind", function () {
  it("should handle strings", async function () {
    const instance = await AsBind.instantiate(this.rawModule, {
      asc: {
        swappedConcat(a, b) {
          return b + a;
        }
      }
    });
    assert(instance.exports.swapAndPad("a", "b") === "!ba!");
  });
});
