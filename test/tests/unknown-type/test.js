describe("as-bind", function () {
  it("should handle unknown types gracefully", async function () {
    const instance = await AsBind.instantiate(this.rawModule);
    assert(typeof instance.exports.makeAThing(43) === "number");
  });
});
