// Class for asbind instances

import { asbindInstantiate, asbindInstantiateSync } from "./instantiate";
import { bindImportFunction, bindExportFunction } from "./bind-function";
import { isReservedExportKey } from "./reserved-export-keys";

// Need to traverse the importObject and bind all import functions
const traverseObjectAndRunCallbackForFunctions = (
  baseObject,
  keys,
  callback
) => {
  if (!baseObject) {
    return;
  }

  Object.keys(baseObject).forEach(baseObjectKey => {
    if (typeof baseObject[baseObjectKey] === "function") {
      // Call the callback
      callback(baseObject, keys, baseObjectKey);
    } else if (typeof baseObject[baseObjectKey] === "object") {
      traverseObjectAndRunCallbackForFunctions(
        baseObject[baseObjectKey],
        [...keys, baseObjectKey],
        callback
      );
    }
  });
};

export default class AsbindInstance {
  constructor() {
    this.unboundExports = {};
    this.exports = {};
    this.importObject = {};
  }

  async _instantiate(source, importObject) {
    // Bind our import function
    this._instantiateBindImportFunctions(importObject);

    // Instantiate the module through the loader
    const unboundExports = await asbindInstantiate(source, this.importObject);

    // Bind our unbound exports
    this._instantiateBindUnboundExports(unboundExports);
  }

  _instantiateSync(source, importObject) {
    // Bind our import function
    this._instantiateBindImportFunctions(importObject);

    // Instantiate the module through the loader
    const unboundExports = asbindInstantiateSync(source, this.importObject);

    // Bind our unbound exports
    this._instantiateBindUnboundExports(unboundExports);
  }

  _instantiateBindImportFunctions(importObject) {
    // Set our import object, as we will need it to store type caching
    this.importObject = importObject;

    // Need to traverse the importObject and bind all import functions
    traverseObjectAndRunCallbackForFunctions(
      this.importObject,
      [],
      (baseObject, keys, baseObjectKey) => {
        // Wrap the original key, but then expose a new key for the unbound import
        let importFunction = baseObject[baseObjectKey];
        baseObject[`__asbind_unbound_${baseObjectKey}`] = importFunction;
        baseObject[baseObjectKey] = bindImportFunction(
          this,
          this.importObject,
          [...keys, baseObjectKey]
        );
      }
    );
  }

  _instantiateBindUnboundExports(unboundExports) {
    // Set our unbound exports
    this.unboundExports = unboundExports;

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

  enableExportFunctionTypeCaching() {
    Object.keys(this.exports).forEach(exportKey => {
      this.exports[exportKey].shouldCacheTypes = true;
    });
  }

  disableExportFunctionTypeCaching() {
    Object.keys(this.exports).forEach(exportKey => {
      this.exports[exportKey].shouldCacheTypes = false;
    });
  }

  enableImportFunctionTypeCaching() {
    // Need to traverse the importObject and bind all import functions
    traverseObjectAndRunCallbackForFunctions(
      this.importObject,
      [],
      (baseObject, keys, baseObjectKey) => {
        // Wrap the original key, but then expose a new key for the unbound import
        let importFunction = baseObject[baseObjectKey];
        importFunction.shouldCacheTypes = true;
      }
    );
  }

  disableImportFunctionTypeCaching() {
    // Need to traverse the importObject and bind all import functions
    traverseObjectAndRunCallbackForFunctions(
      this.importObject,
      [],
      (baseObject, keys, baseObjectKey) => {
        // Wrap the original key, but then expose a new key for the unbound import
        let importFunction = baseObject[baseObjectKey];
        importFunction.shouldCacheTypes = false;
      }
    );
  }
}
