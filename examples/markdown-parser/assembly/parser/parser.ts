import { log } from "../util";

import { Token } from "../tokenizer/token";

import { AstNode } from "./ast";

let ast = new Array<AstNode>(0);

export function markdownTokenParser(tokens: Array<Token>): Array<AstNode> {
  ast = new Array<AstNode>(0);

  for (let i: i32 = 0; i < tokens.length; i++) {
    let astNode: AstNode = new AstNode();

    if (token.type === "NewLine") {
      astNode.type = "NewLine";
    }
  }
}

function addAstNode(tokens: Array<Token>, tokenIndex: i32): i32 {
  let astNode: AstNode = new AstNode();
  let token: Token = tokens[tokenIndex];

  if (token.type === "NewLine") {
    astNode.type = "NewLine";
    return 0;
  }

  if (token.type === "Whitespace") {
    astNode.type = "Whitespace";
    return 0;
  }

  if (token.type === "Header") {
    // Prepare our Index offset
    let indexOffset = 0;

    // TODO: Started falling asleep
    // Call getHeader AST Node, which can call other AST functions
    // Add an indexOffstet that way we can adjust accodingly
  }
}

function getHeaderAstNode(tokens: Array<Token>, tokenIndex: i32): AstNode {
  let astNode: AstNode = new AstNode();

  // Find the level of the header
  let headerLevel = 1;
  while (
    tokenIndex + indexOffset + 1 < tokens.length - 1 &&
    tokens[tokenIndex + indexOffset + 1].type === "Header"
  ) {
    headerLevel += 1;
    indexOffset += 1;
  }

  // Get the content of the header
}

function getItalicsAstNode(tokens: Array<Token>, tokenIndex: i32): AstNode {}

function getBoldAstNode(tokens: Array<Token>, tokenIndex: i32): AstNode {}
