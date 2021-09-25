describe("as-bind", function () {
  it("should handle array", async function () {
    const instance = await AsBind.instantiate(this.rawModule, {
      asc: {
        swappedConcat(a, b) {
          return [].concat(b, a);
        }
      }
    });
    assert(
      instance.exports.swapAndPad([1, 2, 3], [10, 11, 12]).join(",") ===
        [255, 10, 11, 12, 1, 2, 3, 255].join(",")
    );
  });

  it("should handle nested array", async function () {
    const instance = await AsBind.instantiate(this.rawModule, {
      asc: {
        swappedConcat(a, b) {
          return [].concat(b, a);
        }
      }
    });
    const data = [["a", "b", "c"], ["1"], ["w", "x", "y", "z"]];
    assert(
      instance.exports.join(data) === data.map((s) => s.join("")).join("")
    );
  });
});
