// Wasm module to do a basic markdown to HTML

// Export asbind
export * from "../../../dist/asbind";

import { log } from "./util";

import { Token } from "./tokenizer/token";
import { markdownTokenizer } from "./tokenizer/tokenizer";

import { AstNode } from "./parser/ast";
import { markdownTokenParser } from "./parser/parser";

// https://www.geeksforgeeks.org/compiler-design-phases-compiler/
// https://github.com/jamiebuilds/the-super-tiny-compiler/blob/master/the-super-tiny-compiler.js

export function convertMarkdownToHTML(markdown: string): string {
  log(markdown);

  // Turn the text into seperate tokens
  let tokens: Array<Token> = markdownTokenizer(markdown);

  log("Tokenized");

  log("Tokens lengths:" + tokens.length.toString());
  for (let i = 0; i < tokens.length; i++) {
    log("Token index:" + tokens[i].index.toString());
    log("Token value:" + tokens[i].value);
  }
  log("Done");

  // Parse the tokens into an AST
  let ast: Array<AstNode> = markdownTokenParser(tokens);

  log("AST'd");

  log("AST length:" + ast.length.toString());
  for (let i = 0; i < ast.length; i++) {
    log("ast type:" + ast[i].type);
    log("ast value:" + ast[i].value);
  }
  log("Done");

  // Generate code (HTML) from our AST

  return markdown;
}
