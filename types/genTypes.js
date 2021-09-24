const types = {
  // Basictypes
  void: "void",
  i32: "number",
  u32: "number",
  i64: "number",
  u64: "number",
  f32: "number",
  f64: "number",
  bool: "boolean",
  i8: "number",
  u8: "number",
  i16: "number",
  u16: "number",

  "~lib/string/String": "string"
};

function transformBasicTypes(type) {
  return types[type];
}

function transformType(typeConfig) {
  if (typeof typeConfig === "string") {
    const basic = transformBasicTypes(typeConfig);
    if (basic) {
      return basic;
    }
  }

  return "any";
}

function transformFunction(fnName, returnType, params) {
  return `${fnName}(${params
    .map(param => transformType(param))
    .map((type, index) => `param${index}:${type}`)
    .join(",")}): ${transformType(returnType)};`;
}

function genTypes(data) {
  const exported = `export namespace EXPORTS {${Object.entries(
    data.exportedFunctions
  )
    .map(([fnName, data]) =>
      transformFunction(fnName, data.returnType, data.parameters)
    )
    .map(v => `export function ${v}`)
    .join("\n")}}`;
  const imported = `export namespace IMPORTS {${Object.entries(
    data.importedFunctions
  ).map(
    ([key, data]) =>
      `export interface ${key} {${Object.entries(data)
        .map(([fnName, data]) =>
          transformFunction(fnName, data.returnType, data.parameters)
        )
        .join("\n")}}`
  )}}`;

  return { exported, imported };
}

const d = genTypes(require("./testing.types.json"));

console.log(d);

console.log(`${d.exported}\n${d.imported}`);
