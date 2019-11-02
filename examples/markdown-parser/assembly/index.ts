// Wasm module to do a basic markdown to HTML

// Export asbind
export * from "../../../dist/asbind";

import { log } from "./util";

import { markdownTokenizer } from "./tokenizer";

export function convertMarkdownToHTML(markdown: string): string {
  log(markdown);

  let tokenTuples: Array<string> = markdownTokenizer(markdown);

  log("Tokenized");

  log("Tokens lengths:" + tokenTuples.length.toString());
  for (let i = 0; i < tokenTuples.length; i++) {
    log("Token tuple part:" + tokenTuples[i].toString());
  }
  log("Done");

  return markdown + " yoyoyoyo";
}
