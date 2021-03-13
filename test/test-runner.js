const asc = require("assemblyscript/cli/asc");
const { promisify } = require("util");
const glob = promisify(require("glob"));
const Mocha = require("mocha");

async function main() {
  await asc.ready;

  await compileAllAsc();

  await runTestsInNode();
}
main();

async function compileAllAsc() {
  const ascFiles = await glob("./tests/**/*.ts");
  const transformFile = require.resolve("../transform.js");
  for (const ascFile of ascFiles) {
    console.log(`Compiling ${ascFile}...`);
    await asc.main([
      "--exportRuntime",
      "--transform",
      transformFile,
      "--binaryFile",
      ascFile.replace(/\.ts$/, ".wasm"),
      ascFile
    ]);
  }
}

async function runTestsInNode() {
  const mocha = new Mocha();

  mocha.globalSetup(() => {
    console.log("GLOBAL SETUP");
  });

  const testFiles = await glob("./tests/**/test.js");
  for (const testFile of testFiles) {
    mocha.addFile(testFile);
  }

  const failures = await runMochaAsync(mocha);
  console.log({ failures });
}

function runMochaAsync(mocha) {
  return new Promise(resolve => {
    const runner = mocha.run(resolve);
  });
}
