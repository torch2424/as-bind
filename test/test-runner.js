const { promisify } = require("util");
const fs = require("fs/promises");

const Mocha = require("mocha");
const assert = require("assert");
const glob = promisify(require("glob"));

const asc = require("assemblyscript/cli/asc");

globalThis.AsBind = require("../dist/as-bind.cjs.js");

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

  const testFiles = await glob("./tests/**/test.js");
  for (const testFile of testFiles) {
    mocha.addFile(testFile);
  }

  mocha.globalSetup(() => {
    this.assert = assert;
  });

  mocha.rootHooks({
    async beforeEach() {
      const { file } = this.currentTest;
      const wasmFile = file.replace(/test\.js$/, "asc.wasm");
      this.rawModule = await fs.readFile(wasmFile);
    }
  });

  const failures = await runMochaAsync(mocha);
  console.log({ failures });
}

async function runMochaAsync(mocha) {
  await mocha.loadFilesAsync();
  return new Promise(resolve => {
    const runner = mocha.run(resolve);
  });
}
