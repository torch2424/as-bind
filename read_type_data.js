const fs = require("fs/promises");

async function main() {
  const b = await fs.readFile(process.argv[2]);
  const { instance } = await WebAssembly.instantiate(b, {
    env: { abort() {} }
  });
  const ptr = instance.exports.__asbind_type_data.value;
  const dv = new DataView(instance.exports.memory.buffer);
  const strLen = dv.getUint32(ptr - 4, true);
  const strView = new Uint16Array(
    instance.exports.memory.buffer,
    ptr,
    strLen / Uint16Array.BYTES_PER_ELEMENT
  );
  const str = new TextDecoder("utf-16le").decode(strView);
  console.log({ str });
  const data = JSON.parse(str);
  console.log(JSON.stringify(data, null, 2));
}
main();
