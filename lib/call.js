import * as loader from 'assemblyscript/lib/loader';

export default function asbindCall(wasmExports, wasmExportFunction) {
  console.log(wasmExports)
  console.log(wasmExportFunction);
  console.log(arguments);
}
