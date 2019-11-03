// Wasm module to do a basic markdown to HTML

// Export asbind
export * from "../../../dist/asbind";

import { log } from "./util";

import { Token } from "./tokenizer/token";
import { markdownTokenizer } from "./tokenizer/tokenizer";

export function convertMarkdownToHTML(markdown: string): string {
  log(markdown);

  let tokens: Array<Token> = markdownTokenizer(markdown);

  log("Tokenized");

  log("Tokens lengths:" + tokens.length.toString());
  for (let i = 0; i < tokens.length; i++) {
    log("Token index:" + tokens[i].index.toString());
    log("Token value:" + tokens[i].value);
  }
  log("Done");

  return markdown + " yoyoyoyo";
}
