describe("as-bind", function() {
  it("should handle strings", async function() {
    const instance = await AsBind.instantiate(this.rawModule, {
      asc: {
        async swappedConcat(a, b) {
          return b + a;
        }
      }
    });
    assert((await instance.exports.swapAndPad("a", "b")) === "!ba!");
  });
});
