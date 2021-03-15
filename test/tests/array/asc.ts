export function swapAndPad(a: Array<f64>, b: f64[]): Array<f64> {
  const result = swappedConcat(a, b);
  result.unshift(255);
  result.push(255);
  return result;
}

declare function swappedConcat(a: f64[], b: Array<f64>): f64[];
