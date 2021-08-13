describe("as-bind", function() {
  it("should support exported declare function in namespace", async function() {
    const instance = await AsBind.instantiate(this.rawModule, {
      asc: {
        "console.log"(str) {
          assert(str === "ok");
        }
      }
    });
    instance.exports.fn();
  });
});
