const fs = require("fs");
const { Transform } = require("assemblyscript/cli/transform");
const assemblyscript = require("assemblyscript");

function isInternalElement(element) {
  return element.internalName.startsWith("~");
}

function elementHasFlag(el, flag) {
  return (el.flags & flag) != 0;
}

function typeName(type) {
  return type.name.text ?? type.name.identifier.text;
}

function containingModule(func) {
  let container = func.parent;
  // Only a module is it’s own parent
  while (container !== container.parent) {
    container = container.parent;
  }
  return container;
}

function functionTypeDescriptor(func) {
  return {
    returnType: typeName(func.declaration.signature.returnType),
    parameters: func.declaration.signature.parameters.map(parameter =>
      typeName(parameter.type)
    )
  };
}

const AS_BIND_SRC = "lib/assembly/as-bind.ts";
const SECTION_NAME = "as-bind_bindings";

class AsBindTransform extends Transform {
  afterParse(parser) {
    const bindSrc = fs.readFileSync(
      require.resolve("./" + AS_BIND_SRC),
      "utf8"
    );
    parser.parseFile(bindSrc, "~as-bind/" + AS_BIND_SRC, true);
  }
  afterInitialize(program) {
    const flatExportedFunctions = [...program.elementsByDeclaration.values()]
      .filter(el =>
        elementHasFlag(el, assemblyscript.CommonFlags.MODULE_EXPORT)
      )
      .filter(el => !isInternalElement(el))
      .filter(
        el =>
          el.declaration.kind === assemblyscript.NodeKind.FUNCTIONDECLARATION
      );
    const flatImportedFunctions = [...program.elementsByDeclaration.values()]
      .filter(el => elementHasFlag(el, assemblyscript.CommonFlags.DECLARE))
      .filter(el => !isInternalElement(el))
      .filter(
        v => v.declaration.kind === assemblyscript.NodeKind.FUNCTIONDECLARATION
      );
    const importedFunctions = {};
    for (const importedFunction of flatImportedFunctions) {
      // To know under what module name an imported function will be expected,
      // we have to find the containing module of the given function, take the
      // internal name (which is effectively the file path without extension)
      // and only take the part after the last `/`
      // (i.e. the file name without extension).
      const moduleName = containingModule(importedFunction)
        .internalName.split("/")
        .slice(-1)[0];
      if (!importedFunctions.hasOwnProperty(moduleName)) {
        importedFunctions[moduleName] = {};
      }
      importedFunctions[moduleName][
        importedFunction.name
      ] = functionTypeDescriptor(importedFunction);
    }
    const exportedFunctions = {};
    for (const exportedFunction of flatExportedFunctions) {
      exportedFunctions[exportedFunction.name] = functionTypeDescriptor(
        exportedFunction
      );
    }
    this.typeData = JSON.stringify({ importedFunctions, exportedFunctions });
  }
  afterCompile(module) {
    module.addCustomSection(
      SECTION_NAME,
      new TextEncoder("utf8").encode(this.typeData)
    );
  }
}
module.exports = AsBindTransform;
