describe("as-bind", function () {
  it("should handle multiple files correctly", async function () {
    const instance = await AsBind.instantiate(this.rawModule, {
      imports: {
        swappedConcat(a, b) {
          return b + a;
        }
      }
    });
    assert(typeof instance.exports.addExclamations === "undefined");
    assert(instance.exports.swapAndPad("a", "b") === "!ba!");
  });
});
