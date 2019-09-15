// Wasm module to do a basic markdown to HTML

// Export asbind
export * from "../../../dist/asbind";

import { log } from "./util";

import { markdownTokenizer } from "./tokenizer";

export function convertMarkdownToHTML(markdown: string): string {
  log(markdown);

  markdownTokenizer(markdown);

  /*
  log("Tokenss:" + tokens.length.toString());
  for (let i = 0; i < tokens.length; i++) {
    // NOTE: You cannot pass a string that is on an object. A New variable must be allocated.
    log("Token Value:" + tokens[i].index.toString());
  }
  log("Done");
   */

  return markdown + " yoyoyoyo";
}
