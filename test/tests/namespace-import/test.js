describe("as-bind", function () {
  it("should support @external imports", async function () {
    let from_wasm;
    let from_wasm2;

    const instance = await AsBind.instantiate(this.rawModule, {
      my_module: {
        my_log(str) {
          from_wasm = str;
        }
      },
      asc: {
        my_log2(str) {
          from_wasm2 = str;
        }
      }
    });

    instance.exports.fn();

    assert(from_wasm === "ok");
    assert(from_wasm2 === "fine");
  });
});
