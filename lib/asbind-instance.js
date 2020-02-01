// Class for asbind instances

import { asbindInstantiate } from "./instantiate";
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

// see: assemblyscript/std/assembly/shared/typeinfo.ts
const deriveIdsFromRtti = (unboundExports, ids) => {
  const ARRAY = 1 << 1;
  const VALUE_ALIGN_SHIFT = 5;
  const VALUE_SIGNED = 1 << 10;
  const VALUE_FLOAT = 1 << 11;

  const rtti = new Uint32Array(
    unboundExports.memory.buffer,
    unboundExports.__rtti_base
  );

  for (let i = 3, k = rtti[0]; i < k; ++i) {
    const flags = rtti[1 + (i << 1)];
    const base = rtti[2 + (i << 1)];
    if (base === ids.ARRAYBUFFERVIEW && !(flags & ARRAY)) {
      // typed array
      const align = 31 - Math.clz32((flags >>> VALUE_ALIGN_SHIFT) & 31);
      const signed = Boolean(flags & VALUE_SIGNED);
      const float = Boolean(flags & VALUE_FLOAT);
      switch (align) {
        case 0: {
          if (signed) ids.INT8ARRAY = i;
          else ids.UINT8ARRAY = i;
          break;
        }
        case 1: {
          if (signed) ids.INT16ARRAY = i;
          else ids.UINT16ARRAY = i;
          break;
        }
        case 2: {
          if (float) ids.FLOAT32ARRAY = i;
          else if (signed) ids.INT32ARRAY = i;
          else ids.UINT32ARRAY = i;
          break;
        }
        case 3: {
          if (float) ids.FLOAT64ARRAY = i;
          else if (signed) ids.INT64ARRAY = i;
          else ids.UINT64ARRAY = i;
          break;
        }
      }
    }
  }
};

export default class AsbindInstance {
  constructor() {
    this.unboundExports = {};
    this.ids = {
      // Ids of fundamental classes are fixed
      ARRAYBUFFER: 0,
      STRING: 1,
      ARRAYBUFFERVIEW: 2
    };
    this.exports = {};
    this.importObject = {};
  }

  async _instantiate(source, importObject) {
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

    // Instantiate the module through the loader
    this.unboundExports = await asbindInstantiate(source, this.importObject);

    // Derive runtime ids from RTTI
    deriveIdsFromRtti(this.unboundExports, this.ids);

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
