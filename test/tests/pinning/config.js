exports.mangleCompilerParams = (params) => {
  // Remove runtime parameter
  const idx = params.indexOf("stub");
  params.splice(idx - 1, 2);
  // Add debug
  params.unshift("--target", "debug");
  console.log({ params });
};
