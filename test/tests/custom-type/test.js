describe("as-bind", function () {
  it("should be extensible with custom type handlers", async function () {
    AsBind.converters.set(/^tests\/custom-type\/asc\/X$/, {
      ascToJs(asbindInstance, value, typeName) {
        const dv = new DataView(asbindInstance.exports.memory.buffer);
        const strPtr = dv.getUint32(value, true);
        return asbindInstance.exports.__getString(strPtr);
      },
      jsToAsc(asbindInstance, value, typeName) {
        const ptr = asbindInstance.exports.__new(
          asbindInstance.getTypeId(typeName),
          asbindInstance.getTypeSize(typeName)
        );
        const strPtr = asbindInstance.exports.__newString(value);
        const dv = new DataView(asbindInstance.exports.memory.buffer);
        dv.setUint32(ptr, strPtr, true);
        return ptr;
      },
    });
    const instance = await AsBind.instantiate(this.rawModule);
    assert(instance.exports.makeAThing("hello") === "hello");
    assert(instance.exports.readAThing("hello") === 5);
  });
});
