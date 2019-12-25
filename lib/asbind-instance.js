// Class for asbind instances

import { asbindInstantiate } from "./instantiate";
import { bindImportFunction, bindExportFunction } from "./bind-function";
import { isReservedExportKey } from "./reserved-export-keys";

export default class AsbindInstance {
  constructor() {
    this.unboundExports = {};
    this.exports = {};
  }

  async instantiate(source, importObject) {
    // Need to traverse the importObject and bind all import functions
    const traverseObjectAndWrapAsbindImports = baseObject => {
      if (!baseObject) {
        return;
      }

      Object.keys(baseObject).forEach(baseObjectKey => {
        if (typeof baseObject[baseObjectKey] === "function") {
          // Wrap the original key, but then expose a new key for the unbound import
          let importFunction = baseObject[baseObjectKey];
          baseObject[`__asbind_unbound_${baseObjectKey}`];
          baseObject[baseObjectKey] = bindImportFunction(this, importFunction);
        } else if (typeof baseObject[baseObjectKey] === "object") {
          traverseObjectAndWrapAsbindImports(baseObject[baseObjectKey]);
        }
      });
    };
    traverseObjectAndWrapAsbindImports(importObject);

    // Instantiate the module through the loader
    this.unboundExports = await asbindInstantiate(source, importObject);

    // Wrap appropriate the appropriate export functions
    this.exports = {};
    Object.keys(this.unboundExports).forEach(unboundExportKey => {
      if (
        typeof this.unboundExports[unboundExportKey] === "function" &&
        !isReservedExportKey(unboundExportKey)
      ) {
        // Wrap the export
        this.exports[unboundExportKey] = bindExportFunction(
          this,
          unboundExportKey
        );
      } else {
        this.exports[unboundExportKey] = this.unboundExports[unboundExportKey];
      }
    });
  }
}
