import {
  CommonFlags,
  NodeKind,
  ElementKind,
  IdentifierExpression,
  FunctionPrototype,
  StringLiteralExpression,
  Module,
  Function,
  DeclaredElement,
  Type
} from "assemblyscript/dist/assemblyscript.js";
import { Transform } from "assemblyscript/dist/transform.js";
import { TypeDef } from "./lib/types";

function isInternalElement(element: DeclaredElement) {
  return element.internalName.startsWith("~");
}

function elementHasFlag(el: DeclaredElement, flag: number) {
  return (el.flags & flag) != 0;
}

function typeName(type: Type) {
  return type.getClass()?.internalName ?? type.toString();
}

function containingModule(func: Function) {
  let container = func.parent;
  // Only a module is it’s own parent
  while (container !== container.parent) {
    container = container.parent;
  }
  return container;
}

function getFunctionTypeDescriptor(func: Function) {
  return {
    returnType: typeName(func.signature.returnType),
    parameters: func.signature.parameterTypes.map(parameter =>
      typeName(parameter)
    )
  };
}

function extractTypeIds(type: Type) {
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

function extractTypeIdsFromFunction(func: Function) {
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
      .filter(el => elementHasFlag(el, CommonFlags.ModuleExport))
      .filter(el => !isInternalElement(el))
      .filter(
        el => el.declaration.kind === NodeKind.FunctionDeclaration
      ) as FunctionPrototype[];
    const flatImportedFunctions = [
      ...this.program.elementsByDeclaration.values()
    ]
      .filter(el => elementHasFlag(el, CommonFlags.Declare))
      .filter(el => !isInternalElement(el))
      .filter(
        v => v.declaration.kind === NodeKind.FunctionDeclaration
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

      const iFunction = importedFunction.instances.get("")!;

      let external_module: string | undefined;
      let external_name: string | undefined;

      let decorators = iFunction.declaration.decorators;

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
        containingModule(iFunction).internalName.split("/").slice(-1)[0];
      if (!importedFunctions.hasOwnProperty(moduleName)) {
        importedFunctions[moduleName] = {};
      }
      let importedFunctionName = iFunction.name;
      if (external_name) {
        importedFunctionName = external_name;
      } else if (
        iFunction.parent &&
        iFunction.parent.kind === ElementKind.Namespace
      ) {
        importedFunctionName = iFunction.parent.name + "." + iFunction.name;
      }
      importedFunctions[moduleName][importedFunctionName] =
        getFunctionTypeDescriptor(iFunction);
      Object.assign(typeIds, extractTypeIdsFromFunction(iFunction));
    }
    const exportedFunctions = {};
    for (let exportedFunction of flatExportedFunctions) {
      if (
        exportedFunction.instances.size > 1 ||
        !exportedFunction.instances.has("")
      ) {
        throw Error(`Can’t import or export generic functions.`);
      }
      const eFunction = exportedFunction.instances.get("");
      exportedFunctions[eFunction.name] = getFunctionTypeDescriptor(eFunction);
      Object.assign(typeIds, extractTypeIdsFromFunction(eFunction));
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
