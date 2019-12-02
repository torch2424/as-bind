import { log } from "../util";

import { Token } from "../tokenizer/token";
import { TokenType } from "../tokenizer/token-type";

import { AstNode } from "../parser/ast";
import { AstNodeType } from "../parser/ast-node-type";

export function generateHtmlString(ast: Array<AstNode>): string {
  let htmlString: string = "";

  for (let i = 0; i < ast.length; i++) {
    htmlString += generateHtmlStringForAstNode(ast[i]);
  }

  return htmlString;
}

function generateHtmlStringForAstNode(astNode: AstNode): string {
  let htmlString: string = "";

  // It must be a character, return the value
  htmlString = astNode.value;

  return htmlString;
}
