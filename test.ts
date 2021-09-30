import { instantiate } from ".";

async function s() {
  const a = await instantiate<{ exampleFn(a: number): number }>(
    fetch("..."),
    {}
  );

  a.exports.exampleFn;
}
s();
