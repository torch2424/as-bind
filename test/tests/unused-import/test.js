describe("as-bind", function() {
  it("should handle unused imported functions gracefully", async function() {
    const instance = await AsBind.instantiate(this.rawModule);
    assert(instance.exports.thing() === -1);
  });
});
