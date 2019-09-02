// Validations to run when binding elements

const REQUIRED_EXPORT_RUNTIME_KEYS = [
  "__alloc",
  "__allocString",
  "__retain",
  "__release"
];

export function validateExportsAndFunction(wasmExports, wasmExportFunction) {
  // Do some validation
  if (typeof wasmExports !== "object") {
    throw new Error(
      "Did not pass a valid exports object of the WebAssembly Instance"
    );
  }

  if (typeof wasmExportFunction !== "function") {
    throw new Error(
      "Did not pass a valid exported function of the WebAssembly Instance"
    );
  }

  REQUIRED_EXPORT_RUNTIME_KEYS.forEach(key => {
    if (!wasmExports[key]) {
      throw new Error(
        'Required Exported AssemblyScript Runtime functions are not present. Runtime must be set to "full" or "stub"'
      );
    }
  });
}
