// Use pupeteer to run in the browser
const puppeteer = require("puppeteer");

// Require rollup to compile our browser.js
const rollup = require("rollup");
const { nodeResolve } = require("@rollup/plugin-node-resolve");

// Get some native node libs, in order to host a static server
const path = require("path");
const fs = require("fs");
const http = require("http");

// Host a static server of the local directory
// https://nodejs.org/en/knowledge/HTTP/servers/how-to-serve-static-files/
http
  .createServer(function (req, res) {
    fs.readFile(__dirname + req.url, function (err, data) {
      if (err) {
        res.writeHead(404);
        res.end(JSON.stringify(err));
        return;
      }
      res.writeHead(200);
      res.end(data);
    });
  })
  .listen(8000);

(async () => {
  // Create a rollup bundle and get our compiled browser.js as a string
  const bundle = await rollup.rollup({
    input: "./browser.js",
    plugins: [nodeResolve()]
  });
  const { output } = await bundle.generate({
    format: "iife"
  });
  const browserQuickstartJs = output[0].code;

  // Launch the pupeteer browser and page
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto("http://localhost:8000/browser.html");

  // Create a promise that we will resolve or reject once we see any expected behavior
  let pageResolve;
  let pageReject;
  const pageResultPromise = new Promise((resolve, reject) => {
    pageResolve = resolve;
    pageReject = reject;
  });

  // Listen to JS Console messages, log them, and resolve our promise on an expected message
  page.on("console", message => {
    console.log(
      `${message.type().substr(0, 3).toUpperCase()} ${message.text()}`
    );

    if (message.text() === "AsBind: Hello World!") {
      pageResolve();
      return;
    }
  });

  // Listen to JS / Page errors, log them, and reject our promise
  page.on("pageerror", err => {
    theTempValue = err.toString();
    console.log("Error: " + theTempValue);

    console.log("Browser Quickstart Failed.");
    pageReject();
    return;
  });

  // Run the compiled browser.js code
  await page.evaluate(browserQuickstartJs);

  // Wait for the promise, and then close everything out
  await pageResultPromise;
  await browser.close();
  process.exit();
})();
