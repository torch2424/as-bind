// Validations to run when binding elements

import { RUNTIME_EXPORT_KEYS } from "./reserved-export-keys";

export function validateExportsAndFunction(exports, exportFunction) {
  // Do some validation
  if (typeof exports !== "object") {
    throw new Error(
      "Did not pass a valid exports object of the WebAssembly Instance"
    );
  }

  if (typeof exportFunction !== "function") {
    throw new Error(
      "Did not pass a valid exported function of the WebAssembly Instance"
    );
  }

  RUNTIME_EXPORT_KEYS.forEach(key => {
    if (!exports[key]) {
      throw new Error(
        'Required Exported AssemblyScript Runtime functions are not present. Runtime must be set to "full" or "stub"'
      );
    }
  });
}
