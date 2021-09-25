import {
  CommonFlags,
  NodeKind,
  ElementKind,
  Transform,
  IdentifierExpression,
  FunctionPrototype,
  StringLiteralExpression,
  Module
} from "visitor-as/as";
import {TypeDef} from "./lib/types";

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

export default class AsBindTransform extends Transform {
  afterCompile(module: Module) {
    const flatExportedFunctions = [
      ...this.program.elementsByDeclaration.values()
    ]
      .filter(el => elementHasFlag(el, CommonFlags.MODULE_EXPORT))
      .filter(el => !isInternalElement(el))
      .filter(
        el => el.declaration.kind === NodeKind.FUNCTIONDECLARATION
      ) as FunctionPrototype[];
    const flatImportedFunctions = [
      ...this.program.elementsByDeclaration.values()
    ]
      .filter(el => elementHasFlag(el, CommonFlags.DECLARE))
      .filter(el => !isInternalElement(el))
      .filter(
        v => v.declaration.kind === NodeKind.FUNCTIONDECLARATION
      ) as FunctionPrototype[];

    const typeIds: TypeDef["typeIds"] = {};
    const importedFunctions: TypeDef["importedFunctions"] = {};
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
      console.log(importedFunction, importedFunction.instances.get(""));

      importedFunction = importedFunction.instances.get(
        ""
      ) as unknown as FunctionPrototype;

      let external_module;
      let external_name;

      let decorators = importedFunction.declaration.decorators;

      if (decorators) {
        for (let decorator of decorators) {
          if ((decorator.name as IdentifierExpression).text !== "external")
            continue;
          if (!decorator.args) continue; // sanity check

          if (decorator.args.length > 1) {
            external_module = (decorator.args[0] as StringLiteralExpression)
              .value;
            external_name = (decorator.args[1] as StringLiteralExpression)
              .value;
          } else {
            external_name = (decorator.args[0] as StringLiteralExpression)
              .value;
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
        containingModule(importedFunction).internalName.split("/").slice(-1)[0];
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
      importedFunctions[moduleName][importedFunctionName] =
        getFunctionTypeDescriptor(importedFunction);
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
      exportedFunction = exportedFunction.instances.get(
        ""
      ) as unknown as FunctionPrototype;
      exportedFunctions[exportedFunction.name] =
        getFunctionTypeDescriptor(exportedFunction);
      Object.assign(typeIds, extractTypeIdsFromFunction(exportedFunction));
    }

    module.addCustomSection(
      SECTION_NAME,
      // @ts-ignore
      new TextEncoder("utf8").encode(
        JSON.stringify({
          typeIds,
          importedFunctions,
          exportedFunctions
        })
      )
    );
  }
}
