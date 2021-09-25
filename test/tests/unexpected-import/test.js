describe("as-bind", function () {
  it("should handle unexpected imports gracefully", async function () {
    const instance = await AsBind.instantiate(this.rawModule, {
      env: {
        someFunc() {},
      },
    });
    assert(instance.exports.thing() === -1);
  });
});
