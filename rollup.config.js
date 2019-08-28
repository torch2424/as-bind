import libBundles from './rollup.lib';

let exports = [];

if (process.env.LIB) {
  exports = [
    ...exports,
    ...libBundles
  ];
}

export default exports;
