import {
  CommonFlags,
  NodeKind,
  ElementKind,
  Transform,
  IdentifierExpression,
  FunctionPrototype,
  StringLiteralExpression,
  Module,
  Function,
  DeclaredElement,
  Type,
  Global,
  Element
} from "visitor-as/as";
import { TypeDef } from "./lib/types";

const types = {
  void: "void",
  i32: "number",
  u32: "number",
  i64: "number",
  u64: "BigInt",
  f32: "number",
  f64: "number",
  bool: "boolean",
  i8: "number",
  u8: "number",
  i16: "number",
  u16: "number",

  "~lib/dataview/DataView": "DataView",
  "~lib/string/String": "string",
  "~lib/arraybuffer/ArrayBuffer": "ArrayBuffer",
  "~lib/date/Date": "Date",
  "~lib/error/Error": "Error",
  "~lib/symbol/_Symbol": "symbol"
};

const typedPrefix = "~lib/typedarray/";
const arrayPrefix = "~lib/array/Array<";
const setPrefix = "~lib/set/Set<";
const staticArrayPrefix = "~lib/staticarray/StaticArray<";
const mapPrefix = "~lib/map/Map<";

function typeToTs(type: string) {
  if (type.startsWith(typedPrefix)) {
    type = type.slice(typedPrefix.length);
    if (type.startsWith("Big")) {
      type = type.slice(3);
    }
    return type;
  }

  if (type.startsWith(arrayPrefix)) {
    return `Array<${typeToTs(
      type.slice(arrayPrefix.length, type.length - 1)
    )}>`;
  }

  if (type.startsWith(setPrefix)) {
    return `Set<${typeToTs(type.slice(setPrefix.length, type.length - 1))}>`;
  }

  if (type.startsWith(staticArrayPrefix)) {
    return `Array<${typeToTs(
      type.slice(staticArrayPrefix.length, type.length - 1)
    )}>`;
  }

  if (type.startsWith(mapPrefix)) {
    const genericContents = type.slice(mapPrefix.length, type.length - 1);

    let index = 0;
    let genericCount = 0;

    while (genericContents.length > index) {
      if (genericContents[index] === "<") genericCount++;
      if (genericContents[index] === ">") genericCount--;

      if (genericContents[index] === "," && genericCount === 0) {
        return `Map<${typeToTs(genericContents.slice(0, index))},${typeToTs(
          genericContents.slice(index + 1)
        )}>`;
      }

      index++;
    }
  }

  const tsType = types[type];

  if (!tsType) {
    console.warn("[WARN]: used not known type " + type);

    return "any";
  }

  return tsType;
}

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

interface TSTypeDef {
  IMPORT: namespaceTypeDef;
  EXPORT: namespaceTypeDef;
}

function getFunctionTypeDef(func: Function) {
  const params = func.signature.parameterTypes
    .map((parameter, i) => {
      let optional = "";

      if (i >= func.signature.requiredParameters) {
        optional = "?";
      }

      // I got errors when using rest parameters so not shure if they work...
      if (
        func.signature.hasRest &&
        i + 1 === func.signature.parameterTypes.length
      ) {
        // This is the rest parameter
        return `...rest:${typeToTs(typeName(parameter))}`;
      } else {
        return `param${i + 1}${optional}:${typeToTs(typeName(parameter))}`;
      }
    })
    .join(", ");

  return `function ${func.name}(${params}): ${typeToTs(
    typeName(func.signature.returnType)
  )};`;
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

function renderNamespaces(ns: Record<string, namespaceTypeDef>, root = false) {
  return Object.entries(ns)
    .map(([name, namespace]) => {
      return `
      ${root ? "declare" : "export"} namespace ${name} {
        ${namespace.elements.map(v => `export ${v}`).join("\n")}
        ${renderNamespaces(namespace.namespaces)}
      }
    `;
    })
    .join("\n\n");
}

const SECTION_NAME = "as-bind_bindings";

interface namespaceTypeDef {
  namespaces: Record<string, namespaceTypeDef>;
  elements: string[];
}

export default class AsBindTransform extends Transform {
  getElements<T extends Element = Element>(
    flags: number | CommonFlags | CommonFlags[],
    nodeKind: NodeKind
  ): T[] {
    let flag: number;
    if (Array.isArray(flags)) {
      flag = flags.reduce((a, b) => a | b, 0);
    } else {
      flag = flags;
    }

    return [...this.program.elementsByDeclaration.values()]
      .filter(el => elementHasFlag(el, flag))
      .filter(el => !isInternalElement(el))
      .filter(el => el.declaration.kind === nodeKind) as unknown as T[];
  }

  getTypeNamespace(
    el: Element,
    typeDefs: TSTypeDef,
    type: "export" | "import"
  ) {
    const path = [];

    while (el.parent !== el) {
      if (el.kind === ElementKind.NAMESPACE) {
        path.push(el.name);
      }

      el = el.parent;
    }

    if (type === "import") {
      path.push(el.internalName.split("/").slice(-1)[0]);
    }

    let target: namespaceTypeDef =
      type === "export" ? typeDefs.EXPORT : typeDefs.IMPORT;

    path.reverse().forEach(el => {
      if (!target.namespaces[el]) {
        target.namespaces[el] = {
          namespaces: {},
          elements: []
        };
      }

      target = target.namespaces[el];
    });

    return target;
  }

  afterCompile(module: Module) {
    const typeDefs: TSTypeDef = {
      IMPORT: {
        namespaces: {},
        // Will be empty!
        elements: []
      },
      EXPORT: {
        namespaces: {},
        elements: []
      }
    };

    const flatExportedFunctions = this.getElements<FunctionPrototype>(
      CommonFlags.MODULE_EXPORT,
      NodeKind.FUNCTIONDECLARATION
    );

    const flatImportedFunctions = this.getElements<FunctionPrototype>(
      CommonFlags.DECLARE,
      NodeKind.FUNCTIONDECLARATION
    );

    const flatExportedVariables = this.getElements<Global>(
      CommonFlags.MODULE_EXPORT,
      NodeKind.VARIABLEDECLARATION
    );

    const flatImportedVariables = this.getElements<Global>(
      CommonFlags.DECLARE,
      NodeKind.VARIABLEDECLARATION
    );

    const typeIds: TypeDef["typeIds"] = {};
    const importedFunctions: TypeDef["importedFunctions"] = {};
    for (const importedFunction of flatImportedFunctions) {
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

      let external_module: string;
      let external_name: string;

      let decorators = iFunction.declaration.decorators;

      if (decorators) {
        for (const decorator of decorators) {
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
        iFunction.parent.kind === ElementKind.NAMESPACE
      ) {
        importedFunctionName = iFunction.parent.name + "." + iFunction.name;
      }
      importedFunctions[moduleName][importedFunctionName] =
        getFunctionTypeDescriptor(iFunction);

      let target: namespaceTypeDef = this.getTypeNamespace(
        iFunction,
        typeDefs,
        "import"
      );

      target.elements.push(getFunctionTypeDef(iFunction));

      Object.assign(typeIds, extractTypeIdsFromFunction(iFunction));
    }

    const exportedFunctions = {};
    for (const exportedFunction of flatExportedFunctions) {
      if (
        exportedFunction.instances.size > 1 ||
        !exportedFunction.instances.has("")
      ) {
        throw Error(`Can’t import or export generic functions.`);
      }
      const eFunction = exportedFunction.instances.get("");

      let target: namespaceTypeDef = this.getTypeNamespace(
        eFunction,
        typeDefs,
        "export"
      );

      target.elements.push(getFunctionTypeDef(eFunction));

      exportedFunctions[eFunction.name] = getFunctionTypeDescriptor(eFunction);
      Object.assign(typeIds, extractTypeIdsFromFunction(eFunction));
    }

    for (const exportedVar of flatExportedVariables) {
      let target: namespaceTypeDef = this.getTypeNamespace(
        exportedVar,
        typeDefs,
        "import"
      );

      // exportedVar.declaration
      const declKind = elementHasFlag(exportedVar, CommonFlags.CONST)
        ? "const"
        : "let";

      target.elements.push(
        `${declKind} ${exportedVar.name}: ${typeToTs(
          typeName(exportedVar.type)
        )}`
      );
    }

    for (const importedVar of flatImportedVariables) {
      let target: namespaceTypeDef = this.getTypeNamespace(
        importedVar,
        typeDefs,
        "import"
      );

      const declKind = elementHasFlag(importedVar, CommonFlags.CONST)
        ? "const"
        : "let";

      target.elements.push(
        `${declKind} ${importedVar.name}: ${typeToTs(
          typeName(importedVar.type)
        )}`
      );
    }

    this.writeFile(
      "types.d.ts",
      renderNamespaces(
        typeDefs as unknown as Record<string, namespaceTypeDef>,
        true
      ),
      this.baseDir
    );

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
