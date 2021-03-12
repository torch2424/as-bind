const fs = require("fs/promises");

async function main() {
  const b = await fs.readFile(process.argv[2]);
  const module = await WebAssembly.compile(b);
  const buffer = WebAssembly.Module.customSections(
    module,
    "as-bind_bindings"
  )[0];
  const str = new TextDecoder("utf8").decode(new Uint8Array(buffer));
  console.log({ str });
  const data = JSON.parse(str);
  console.log(JSON.stringify(data, null, 2));
}
main();
