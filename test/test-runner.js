const { promisify } = require("util");
const fs = require("fs/promises");
const { dirname, join } = require("path");

const Express = require("express");
const Mocha = require("mocha");
const glob = promisify(require("glob"));
const pptr = require("puppeteer");

const asc = require("assemblyscript/cli/asc");

globalThis.AsBind = require("../dist/as-bind.cjs.js");

async function main() {
  process.chdir(__dirname);
  await asc.ready;

  await compileAllAsc();

  if ((await getNumFailingTestsInNode()) > 0) {
    process.exit(1);
  }
  if ((await getNumFailingTestsInPuppeteer()) > 0) {
    process.exit(1);
  }
  console.log("Passed node and browser tests");
  return;
}
main();

async function compileAllAsc() {
  const ascFiles = await glob("./tests/**/asc.ts");
  const transformFile = require.resolve("../dist/transform.cjs.js");
  for (const ascFile of ascFiles) {
    const dir = dirname(ascFile);
    let config = {
      mangleCompilerParams() {}
    };
    try {
      const configPath = require.resolve("./" + join(dir, "config.js"));
      const m = require(configPath);
      Object.assign(config, m);
    } catch (e) {}
    console.log(`Compiling ${ascFile}...`);
    const params = [
      "--runtime",
      "stub",
      "--exportRuntime",
      "--transform",
      transformFile,
      "--binaryFile",
      ascFile.replace(/\.ts$/, ".wasm"),
      ascFile
    ];
    config.mangleCompilerParams(params);
    await asc.main(params);
  }
}

async function getNumFailingTestsInNode() {
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
  return new Promise((resolve) => mocha.run(resolve));
}

const PORT = process.env.PORT ?? 50123;
const OPEN_DEVTOOLS = !!process.env.OPEN_DEVTOOLS;

async function getNumFailingTestsInPuppeteer() {
  const testFiles = await glob("./tests/**/test.js");
  const browser = await pptr.launch({
    devtools: OPEN_DEVTOOLS,
    ...(process.env.PUPPETEER_EXECUTABLE_PATH?.length > 0
      ? { executablePath: process.env.PUPPETEER_EXECUTABLE_PATH }
      : {})
  });
  const page = await browser.newPage();

  // Mocha’s JSON reporter doesn’t really give you access to the JSON report,
  // ironically. So I have to intercept console.log()s and detect which
  // one is the JSON resport string. `result` will contain the parsed JSON.
  let result;
  page.on("console", async (msg) => {
    const maybeResult = await maybeExtractMochaStatsDump(msg);
    if (maybeResult) {
      result = maybeResult;
      return;
    }
  });

  // If we want DevTools open, wait for a second here so DevTools can load.
  // Otherwise we might run past `debugger` statements.
  if (OPEN_DEVTOOLS) {
    await new Promise((resolve) => setTimeout(resolve, 1000));
  }

  const app = Express();
  app.use("/", Express.static("../"));
  const server = app.listen(PORT);
  await page.goto(`http://localhost:${PORT}/test/test-runner.html`);
  const numFailures = await page.evaluate(async (testFiles) => {
    for (const testFile of testFiles) {
      // Register the test
      await runScript(`/test/${testFile}`);
      // Save the test’s path. See `test-runner.html` for an explanation.
      runInlineScript(`
        suitePaths.push(${JSON.stringify(testFile)});
      `);
    }

    // Create a promise that resolves once mocha is done running.
    // This way we can block this `evaluate` call until mocha is done.
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

async function maybeExtractMochaStatsDump(msg) {
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
