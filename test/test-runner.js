const { promisify } = require("util");
const fs = require("fs/promises");

const Express = require("express");
const Mocha = require("mocha");
const assert = require("assert");
const glob = promisify(require("glob"));
const pptr = require("puppeteer");

const asc = require("assemblyscript/cli/asc");

globalThis.AsBind = require("../dist/as-bind.cjs.js");

// Just used for syntax highlighting
const html = String.raw;

async function main() {
  await asc.ready;

  await compileAllAsc();

  const [nodeFailures, browserFailures] = await Promise.all([
    runTestsInNode(),
    runTestsInPuppeteer()
  ]);
  if (nodeFailures !== 0 || browserFailures !== 0) {
    console.log({ nodeFailures, browserFailures });
    process.exit(1);
  }
  console.log("Passed node and browser tests");
  return;
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

  const numFailures = await runMochaAsync(mocha);
  return numFailures;
}

async function runMochaAsync(mocha) {
  await mocha.loadFilesAsync();
  return new Promise(resolve => {
    const runner = mocha.run(resolve);
  });
}

const PORT = 50123;
async function runTestsInPuppeteer() {
  const testFiles = await glob("./tests/**/test.js");
  const browser = await pptr.launch({
    headless: false
  });
  const page = await browser.newPage();
  page.on("console", async msg =>
    console[msg._type](
      "Browser log:",
      ...(await Promise.all(msg.args().map(v => v.jsonValue())))
    )
  );

  const app = Express();
  app.use("/", Express.static("../"));
  const server = app.listen(PORT);
  await page.goto(`http://localhost:${PORT}/test/test-runner.html`);
  await page.setContent(html`
    <!DOCTYPE html>
    <script src="/dist/as-bind.iife.js"></script>
    <script>
      self.AsBind = AsBindIIFE;
    </script>
  `);

  await page.close();
  await browser.close();
  // Just to make sure all the logs come out. There’s probably a better solution.
  await new Promise(resolve => setTimeout(resolve, 1000));
  server.close();
  return 0;
}
