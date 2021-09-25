describe("as-bind", function () {
  // Shoutout to @RehkitzDev for the repro
  it("should not GC strings", function (done) {
    let num_logs = 0;
    function string_log(s) {
      num_logs += 1;
      assert(!/[^ABCD]/.test(s));
      if (num_logs === 4) {
        done();
      }
    }

    (async () => {
      const instance = await AsBind.instantiate(this.rawModule, {
        asc: {string_log}
      });

      instance.exports.trash(10000);
      let a = "A".repeat(30);
      let b = "B".repeat(30);
      let c = "C".repeat(60);
      let d = "D".repeat(60);

      instance.exports.string_parameter(a, b, c, d);
    })();
  });
});
