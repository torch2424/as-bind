describe("as-bind", function() {
  it("should handle strings", async function() {
    const instance = await AsBind.instantiate(this.rawModule, {
      asc: {
        imported(a, b) {
          return b + a;
        }
      }
    });
    assert(instance.exports.exported("a", "b") === "!ba!");
  });
});
