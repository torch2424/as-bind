describe("as-bind", function() {
  it("works synchronously", function() {
    const instance = AsBind.instantiateSync(this.rawModule);
    assert(instance.exports.exclaim("a") === "a!");
  });
});
