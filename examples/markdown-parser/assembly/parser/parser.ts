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
      let response: Array<string> = getOffsetOfTokensUntilTokenReached(
        tokens,
        tokenIndex + indexOffset + 1,
        "NewLine"
      );
      let content: string = response[0];
      let offsetTokenLength: i32 = parseInt(response[1]) as i32;

      astNode.type = "Header" + headerLevel.toString();
      astNode.value = content;

      indexOffset += offsetTokenLength;

      ast.push(astNode);
      return offsetTokenLength;
    }
  }

  if (token.type == "Italics") {
    if (
      checkIfTypeIsFoundBeforeOtherType(
        tokens,
        tokenIndex + 1,
        "Italics",
        "NewLine"
      )
    ) {
      let response: Array<string> = getOffsetOfTokensUntilTokenReached(
        tokens,
        tokenIndex + 1,
        "NewLine"
      );
      let content: string = response[0];
      let offsetTokens: i32 = parseInt(response[1]) as i32;

      astNode.type = "Italics";
      astNode.value = content;

      ast.push(astNode);
      return offsetTokens;
    }
  }

  if (token.type == "Bold") {
    if (
      checkIfTypeIsFoundBeforeOtherType(
        tokens,
        tokenIndex + 1,
        "Bold",
        "NewLine"
      )
    ) {
      let response: Array<string> = getOffsetOfTokensUntilTokenReached(
        tokens,
        tokenIndex + 1,
        "NewLine"
      );
      let content: string = response[0];
      let offsetTokens: i32 = parseInt(response[1]) as i32;

      astNode.type = "Bold";
      astNode.value = content;

      ast.push(astNode);
      return offsetTokens;
    }
  }

  if (token.type == "Strikethrough") {
    if (
      checkIfTypeIsFoundBeforeOtherType(
        tokens,
        tokenIndex + 1,
        "Strikethrough",
        "NewLine"
      )
    ) {
      let response: Array<string> = getOffsetOfTokensUntilTokenReached(
        tokens,
        tokenIndex + 1,
        "NewLine"
      );
      let content: string = response[0];
      let offsetTokens: i32 = parseInt(response[1]) as i32;

      astNode.type = "Strikethrough";
      astNode.value = content;

      ast.push(astNode);
      return offsetTokens;
    }
  }

  ast.push(astNode);
  return 0;
}

function getOffsetOfTokensUntilTokenReached(
  tokens: Array<Token>,
  startTokenIndex: i32,
  stopTokenType: string
): Array<string> {
  // Get the content of the header
  let contentTokens: Array<Token> = getAllTokensUntilTokenReached(
    tokens,
    startTokenIndex,
    "NewLine"
  );

  let content: string = "";
  for (let i = 0; i < contentTokens.length; i++) {
    content += contentTokens[i].value;
  }

  let response = new Array<string>();

  response.push(contentTokens.length.toString());
  response.push(content);
  return response;
}

function checkIfTypeIsFoundBeforeOtherType(
  tokens: Array<Token>,
  startTokenIndex: i32,
  checkTokenType: string,
  otherTokenType: string
): boolean {
  let checkTokens: Array<Token> = getAllTokensUntilTokenReached(
    tokens,
    startTokenIndex,
    checkTokenType
  );
  let otherTokens: Array<Token> = getAllTokensUntilTokenReached(
    tokens,
    startTokenIndex,
    otherTokenType
  );

  if (checkTokens.length < otherTokens.length) {
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
