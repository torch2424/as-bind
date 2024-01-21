// We need to import the direct as-bind.cjs.js for Node applications.
// This is because the default "main" key in the `package.json`,
// is the as-bind transform script
import AsBind from "as-bind/dist/as-bind.cjs.js";
import fs from "fs";

const wasm = fs.readFileSync("./path-to-my-wasm.wasm");

const asyncTask = async () => {
  const asBindInstance = await AsBind.instantiate(wasm);

  // You can now use your wasm / as-bind instance!
  const response =
    asBindInstance.exports.myExportedFunctionThatTakesAString("Hello World!");
  console.log(response); // AsBind: Hello World!
};
asyncTask();
