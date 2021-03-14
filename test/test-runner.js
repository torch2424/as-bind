const { promisify } = require("util");
const fs = require("fs/promises");

const Express = require("express");
const Mocha = require("mocha");
const glob = promisify(require("glob"));
const pptr = require("puppeteer");

const asc = require("assemblyscript/cli/asc");

globalThis.AsBind = require("../dist/as-bind.cjs.js");

// Just used for syntax highlighting
const html = String.raw;

async function main() {
  process.chdir(__dirname);
  await asc.ready;

  await compileAllAsc();

  if ((await runTestsInNode()) > 0) {
    process.exit(1);
  }
  if ((await runTestsInPuppeteer()) > 0) {
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
  return new Promise(resolve => mocha.run(resolve));
}

async function extractMochaStatDump(msg) {
  if (msg.args().length == 1 && msg.text().startsWith("{")) {
    const arg = await msg.args()[0].jsonValue();
    let obj;
    try {
      obj = JSON.parse(arg);
    } catch (e) {
      return;
    }
    if (obj.hasOwnProperty("stats")) {
      return obj;
    }
  }
}

const PORT = 50123;
const OPEN_DEVTOOLS = false;
async function runTestsInPuppeteer() {
  const testFiles = await glob("./tests/**/test.js");
  const browser = await pptr.launch({
    devtools: OPEN_DEVTOOLS
  });
  const page = await browser.newPage();
  let result;
  page.on("console", async msg => {
    const maybeResult = await extractMochaStatDump(msg);
    if (maybeResult) {
      result = maybeResult;
      return;
    }
    // Otherwise you can forward the log while debugging
    // console.log("Browser log:", msg.text());
  });

  if (OPEN_DEVTOOLS) {
    // If we want DevTools open, wait for a second here so it can load
    // and `debugger` statements are effective.
    await new Promise(resolve => setTimeout(resolve, 1000));
  }
  const app = Express();
  app.use("/", Express.static("../"));
  const server = app.listen(PORT);
  await page.goto(`http://localhost:${PORT}/test/test-runner.html`);
  const numFailures = await page.evaluate(async testFiles => {
    for (const testFile of testFiles) {
      await runScript(`/test/${testFile}`);
      runInlineScript(`
        suitePaths.push(${JSON.stringify(testFile)});
      `);
    }
    const script = document.createElement("script");
    script.innerHTML = `
      self.mochaRun = new Promise(resolve => mocha.run(resolve));`;
    document.body.append(script);
    return self.mochaRun;
  }, testFiles);
  await page.close();
  await browser.close();
  server.close();

  console.log("\n\n=== Browser results");
  for (const test of result.passes) {
    console.log(`✓ ${test.fullTitle}`);
  }
  console.log("\n\n");
  for (const test of result.failures) {
    console.log(`X ${test.fullTitle}`);
    console.log(`  ${test.err.message}`);
  }
  return numFailures;
}
