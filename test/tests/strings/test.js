describe("as-bind", function() {
  it("should handle strings", async function() {
    const instance = await AsBind.instantiate(this.rawModule, {
      asc: {
        swappedConcat(a, b) {
          return b + a;
        }
      }
    });
    assert(instance.exports.swapAndPad("a", "b") === "!ba!");
  });

  it("should not GC strings", async function() {
    const instance = await AsBind.instantiate(this.rawModule, {
      asc: {
        swappedConcat(a, b) {
          return b + a;
        }
      }
    });
    const long = 1e7;
    const superLong = "a".repeat(long);
    assert(
      instance.exports.swapAndPad(superLong, superLong).length === long * 2 + 2
    );
  });
});
