describe("as-bind", function () {
  it("should handle the prototype chain on the imports object", async function () {
    debugger;
    const asc = {
      otherThing: new WebAssembly.Global({ value: "i32", mutable: false }, 4)
    };
    // This function will be “seen” by the WebAssembly engine as an imported
    // function but is not visible via Object.keys() or similar.
    Object.setPrototypeOf(asc, {
      thing() {
        return "2";
      }
    });
    assert(asc.thing() === "2");
    assert(Object.keys(asc).join(",") === "otherThing");
    const instance = await AsBind.instantiate(this.rawModule, { asc });
    assert(instance.exports.add() === "42");
  });
});
