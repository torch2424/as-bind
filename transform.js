import * as asc from "visitor-as/as";
const { CommonFlags, NodeKind, ElementKind } = asc;

function isInternalElement(element) {
  return element.internalName.startsWith("~");
}

function elementHasFlag(el, flag) {
  return (el.flags & flag) != 0;
}

function typeName(type) {
  return type.getClass()?.internalName ?? type.toString();
}

function containingModule(func) {
  let container = func.parent;
  // Only a module is it’s own parent
  while (container !== container.parent) {
    container = container.parent;
  }
  return container;
}

function getFunctionTypeDescriptor(func) {
  return {
    returnType: typeName(func.signature.returnType),
    parameters: func.signature.parameterTypes.map(parameter =>
      typeName(parameter)
    )
  };
}

function extractTypeIds(type) {
  const result = {};
  const clazz = type.getClass?.();
  if (!clazz) {
    return result;
  }
  result[clazz.internalName] = {
    id: clazz.id,
    byteSize: clazz.nextMemoryOffset
  };
  if (clazz.typeArguments) {
    for (const subType of clazz.typeArguments) {
      Object.assign(result, extractTypeIds(subType));
    }
  }
  return result;
}

function extractTypeIdsFromFunction(func) {
  const result = {};
  Object.assign(result, extractTypeIds(func.signature.returnType));
  func.signature.parameterTypes.forEach(paramType =>
    Object.assign(result, extractTypeIds(paramType))
  );
  return result;
}

const SECTION_NAME = "as-bind_bindings";

export default class AsBindTransform {
  afterCompile(module) {
    /** @type {asc.Program} */
    const program = this.program;
    const flatExportedFunctions = [...program.elementsByDeclaration.values()]
      .filter(el => elementHasFlag(el, CommonFlags.MODULE_EXPORT))
      .filter(el => !isInternalElement(el))
      .filter(el => el.declaration.kind === NodeKind.FUNCTIONDECLARATION);
    const flatImportedFunctions = [...program.elementsByDeclaration.values()]
      .filter(el => elementHasFlag(el, CommonFlags.DECLARE))
      .filter(el => !isInternalElement(el))
      .filter(v => v.declaration.kind === NodeKind.FUNCTIONDECLARATION);

    const typeIds = {};
    const importedFunctions = {};
    for (let importedFunction of flatImportedFunctions) {
      // An imported function with no instances is an unused imported function.
      // Skip it.
      if (!importedFunction.instances) {
        continue;
      }
      if (
        importedFunction.instances.size > 1 ||
        !importedFunction.instances.has("")
      ) {
        throw Error(`Can’t import or export generic functions.`);
      }
      importedFunction = importedFunction.instances.get("");

      let external_module;
      let external_name;

      let decorators = importedFunction.declaration.decorators;

      if (decorators) {
        for (let decorator of decorators) {
          if (decorator.name.text !== "external") continue;
          if (!decorator.args) continue; // sanity check

          if (decorator.args.length > 1) {
            external_module = decorator.args[0].value;
            external_name = decorator.args[1].value;
          } else {
            external_name = decorator.args[0].value;
          }
        }
      }

      // To know under what module name an imported function will be expected,
      // we have to find the containing module of the given function, take the
      // internal name (which is effectively the file path without extension)
      // and only take the part after the last `/`
      // (i.e. the file name without extension).
      const moduleName =
        external_module ||
        containingModule(importedFunction)
          .internalName.split("/")
          .slice(-1)[0];
      if (!importedFunctions.hasOwnProperty(moduleName)) {
        importedFunctions[moduleName] = {};
      }
      let importedFunctionName = importedFunction.name;
      if (external_name) {
        importedFunctionName = external_name;
      } else if (
        importedFunction.parent &&
        importedFunction.parent.kind === ElementKind.NAMESPACE
      ) {
        importedFunctionName =
          importedFunction.parent.name + "." + importedFunction.name;
      }
      importedFunctions[moduleName][
        importedFunctionName
      ] = getFunctionTypeDescriptor(importedFunction);
      Object.assign(typeIds, extractTypeIdsFromFunction(importedFunction));
    }
    const exportedFunctions = {};
    for (let exportedFunction of flatExportedFunctions) {
      if (
        exportedFunction.instances.size > 1 ||
        !exportedFunction.instances.has("")
      ) {
        throw Error(`Can’t import or export generic functions.`);
      }
      exportedFunction = exportedFunction.instances.get("");
      exportedFunctions[exportedFunction.name] = getFunctionTypeDescriptor(
        exportedFunction
      );
      Object.assign(typeIds, extractTypeIdsFromFunction(exportedFunction));
    }
    this.typeData = JSON.stringify({
      typeIds,
      importedFunctions,
      exportedFunctions
    });

    // Temp export of data - better for development
    require("fs").writeFileSync("testing.types.json", this.typeData);

    module.addCustomSection(
      SECTION_NAME,
      new TextEncoder("utf8").encode(this.typeData)
    );
  }
}
