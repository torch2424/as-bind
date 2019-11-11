import { log } from "../util";

import { Token } from "../tokenizer/token";

import { AstNode } from "./ast";

let ast = new Array<AstNode>(0);

export function markdownTokenParser(tokens: Array<Token>): Array<AstNode> {
  ast = new Array<AstNode>(0);

  for (let i: i32 = 0; i < tokens.length; i++) {
    let indexOffset = addAstNode(tokens, i);
    i += indexOffset;
  }

  return ast;
}

function addAstNode(tokens: Array<Token>, tokenIndex: i32): i32 {
  let astNode: AstNode = new AstNode();
  let token: Token = tokens[tokenIndex];

  if (token.type == "NewLine") {
    astNode.type = "NewLine";
    ast.push(astNode);
    return 0;
  }

  if (token.type == "Whitespace") {
    astNode.type = "Whitespace";
    ast.push(astNode);
    return 0;
  }

  if (token.type == "Header") {
    // Initialize the offset for finding the header
    let indexOffset = 0;

    // Find the level of the header
    let headerLevel = 1;
    while (
      tokenIndex + indexOffset + 1 < tokens.length - 1 &&
      tokens[tokenIndex + indexOffset + 1].type === "Header"
    ) {
      headerLevel += 1;
      indexOffset += 1;
    }

    // Check if the next value is whitespace
    if (tokens[tokenIndex + indexOffset + 1].type === "Whitespace") {
      // We have a header

      // Increase the offset once more
      indexOffset += 1;

      // Get the content of the header
      let content: string = getContentOfTokensUntilTokenReached(
        tokens,
        tokenIndex + indexOffset + 1,
        "NewLine"
      );

      astNode.type = "Header" + headerLevel.toString();
      astNode.value = content;

      ast.push(astNode);
      return indexOffset;
    }
  }

  if (token.type == "Italics") {
    // TODO: Find the content between the two italics tokens
    // checkIfTypeIsFoundBeforeOtherType()
  }

  ast.push(astNode);
  return 0;
}

function getContentOfTokensUntilTokenReached(
  tokens: Array<Token>,
  startTokenIndex: i32,
  stopTokenType: string
): string {
  // Get the content of the header
  let contentTokens: Array<tokens> = getAllTokensUntilTokenReached(
    tokens,
    tokenIndex + indexOffset + 1,
    "NewLine"
  );

  let content: string = "";
  for (let i = 0; i < contentTokens.length; i++) {
    content += token.value;
  }

  return content;
}

function checkIfTypeIsFoundBeforeOtherType(
  tokens: Array<Token>,
  startTokenIndex: i32,
  checkTokenType: string,
  otherTokenType: string
): boolean {
  let checkTokens: Array<tokens> = getAllTokensUntilTokenReached(
    tokens,
    tokenIndex + indexOffset + 1,
    checkTokenType
  );
  let otherTokens: Array<tokens> = getAllTokensUntilTokenReached(
    tokens,
    tokenIndex + indexOffset + 1,
    otherTokenType
  );

  if (checkTokens.length < otherTokens) {
    return true;
  } else {
    return false;
  }
}

function getAllTokensUntilTokenReached(
  tokens: Array<Token>,
  startTokenIndex: i32,
  stopTokenType: string
): Array<Token> {
  let responseTokens = new Array<Token>();

  for (let i = startTokenIndex; i < tokens.length; i++) {
    let token = tokens[i];
    if (token.type == stopTokenType) {
      i = tokens.length;
    } else {
      responseTokens.push(token);
    }
  }

  return responseTokens;
}
