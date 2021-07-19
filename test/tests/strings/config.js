exports.mangleCompilerParams = params => {
  const idx = params.indexOf("stub");
  params[idx] = "incremental";
  console.log({ params });
};
