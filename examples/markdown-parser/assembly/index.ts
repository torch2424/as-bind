// Wasm module to do a basic markdown to HTML

import { log } from "./util";

import { Token } from "./tokenizer/token";
import { markdownTokenizer } from "./tokenizer/tokenizer";

import { AstNode } from "./parser/ast";
import { markdownTokenParser } from "./parser/parser";

import { generateHtmlString } from "./code-generator/code-generator";

// https://www.geeksforgeeks.org/compiler-design-phases-compiler/
// https://github.com/jamiebuilds/the-super-tiny-compiler/blob/master/the-super-tiny-compiler.js

// TODO: Performance: "also the AS module might grow memory multiple times, which also adds to the overall time, while js doesn't have to do this" - dcode
// Maybe to a memory grow here?

function printTokens(tokens: Array<Token>): void {
  log("Tokens lengths:" + tokens.length.toString());
  for (let i = 0; i < tokens.length; i++) {
    log("Token Type: " + tokens[i].type);
    log("Token index: " + tokens[i].index.toString());
    log("Token value: " + tokens[i].value);
  }
}

function printAst(ast: Array<AstNode>): void {
  log("AST length:" + ast.length.toString());
  for (let i = 0; i < ast.length; i++) {
    log("ast type: " + ast[i].type);
    log("ast value: " + ast[i].value);
    log("ast number of children: " + ast[i].childNodes.length.toString());
    if (ast[i].childNodes.length > 0) {
      log("printing childNodes...");
      log("------");
      printAst(ast[i].childNodes);
      log("------");
    }
  }
}

export function convertMarkdownToHTML(markdown: string): string {
  // Turn the text into seperate tokens
  let tokens: Array<Token> = markdownTokenizer(markdown);
  // printTokens(tokens);

  // Parse the tokens into an AST
  let ast: Array<AstNode> = markdownTokenParser(tokens);
  // printAst(ast);

  // Generate code (HTML) from our AST
  let htmlString = generateHtmlString(ast);

  return htmlString;
}
