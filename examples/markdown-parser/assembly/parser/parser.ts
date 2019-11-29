import { log } from "../util";

import { Token } from "../tokenizer/token";
import { TokenType } from "../tokenizer/token-type";

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

  if (token.type == TokenType.NEWLINE) {
    astNode.type = TokenType.NEWLINE;
    ast.push(astNode);
    return 0;
  }

  if (token.type == TokenType.WHITESPACE) {
    astNode.type = "Whitespace";
    ast.push(astNode);
    return 0;
  }

  if (token.type == TokenType.HEADER) {
    // Initialize the offset for finding the header
    let indexOffset = 0;

    // Find the level of the header
    let headerLevel = 1;
    while (
      tokenIndex + indexOffset + 1 < tokens.length - 1 &&
      tokens[tokenIndex + indexOffset + 1].type === TokenType.HEADER
    ) {
      headerLevel += 1;
      indexOffset += 1;
    }

    // Check if the next value is whitespace
    if (tokens[tokenIndex + indexOffset + 1].type === TokenType.WHITESPACE) {
      // We have a header

      // Increase the offset once more
      indexOffset += 1;

      // Get the content of the header
      let response: Array<string> = getOffsetOfTokensUntilTokenReached(
        tokens,
        tokenIndex + indexOffset + 1,
        TokenType.NEWLINE
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

  if (token.type == TokenType.ITALICS) {
    if (
      checkIfTypeIsFoundBeforeOtherType(
        tokens,
        tokenIndex + 1,
        TokenType.ITALICS,
        TokenType.NEWLINE
      )
    ) {
      let response: Array<string> = getOffsetOfTokensUntilTokenReached(
        tokens,
        tokenIndex + 1,
        TokenType.NEWLINE
      );
      let content: string = response[0];
      let offsetTokens: i32 = parseInt(response[1]) as i32;

      astNode.type = TokenType.ITALICS;
      astNode.value = content;

      ast.push(astNode);
      return offsetTokens;
    }
  }

  if (token.type == TokenType.BOLD) {
    if (
      checkIfTypeIsFoundBeforeOtherType(
        tokens,
        tokenIndex + 1,
        TokenType.BOLD,
        TokenType.NEWLINE
      )
    ) {
      let response: Array<string> = getOffsetOfTokensUntilTokenReached(
        tokens,
        tokenIndex + 1,
        TokenType.NEWLINE
      );
      let content: string = response[0];
      let offsetTokens: i32 = parseInt(response[1]) as i32;

      astNode.type = TokenType.BOLD;
      astNode.value = content;

      ast.push(astNode);
      return offsetTokens;
    }
  }

  if (token.type == TokenType.STRIKETHROUGH) {
    if (
      checkIfTypeIsFoundBeforeOtherType(
        tokens,
        tokenIndex + 1,
        TokenType.STRIKETHROUGH,
        TokenType.NEWLINE
      )
    ) {
      let response: Array<string> = getOffsetOfTokensUntilTokenReached(
        tokens,
        tokenIndex + 1,
        TokenType.NEWLINE
      );
      let content: string = response[0];
      let offsetTokens: i32 = parseInt(response[1]) as i32;

      astNode.type = TokenType.STRIKETHROUGH;
      astNode.value = content;

      ast.push(astNode);
      return offsetTokens;
    }
  }

  if (token.type == TokenType.UNORDERED_LIST_ITEM) {
    let response: Array<string> = getOffsetOfTokensUntilTokenReached(
      tokens,
      tokenIndex + 1,
      TokenType.NEWLINE
    );
    let content: string = response[0];
    let offsetTokens: i32 = parseInt(response[1]) as i32;

    astNode.type = TokenType.UNORDERED_LIST_ITEM;
    astNode.value = content;

    ast.push(astNode);
    return offsetTokens;
  }

  if (token.type == TokenType.ORDERED_LIST_ITEM) {
    let response: Array<string> = getOffsetOfTokensUntilTokenReached(
      tokens,
      tokenIndex + 1,
      TokenType.NEWLINE
    );
    let content: string = response[0];
    let offsetTokens: i32 = parseInt(response[1]) as i32;

    astNode.type = TokenType.ORDERED_LIST_ITEM;
    astNode.value = content;

    ast.push(astNode);
    return offsetTokens;
  }

  // Let's look for images
  if (token.type == TokenType.IMAGE_START) {
    let response: Array<string> = getOffsetOfTokensUntilTokenReached(
      tokens,
      tokenIndex + 1,
      TokenType.BRACKET_END
    );
    let altText: string = response[0];
    let altTextOffsetTokens: i32 = parseInt(response[1]) as i32;

    let altTextAstNode = new AstNode();
    altTextAstNode.type = "Alt";
    altTextAstNode.value = altText;

    // We have the alt text, if this is an image
    // We need to check if this is immediately followed by a parentheses
    if (
      tokens[tokenIndex + 1 + altTextOffsetTokens].type == TokenType.PAREN_START
    ) {
      let response: Array<string> = getOffsetOfTokensUntilTokenReached(
        tokens,
        tokenIndex + 1,
        TokenType.BRACKET_END
      );
      let imageUrl: string = response[0];
      let imageUrlOffsetTokens: i32 = parseInt(response[1]) as i32;

      // Let's create the Ast Node for the image
      astNode.type = "Image";
      astNode.value = imageUrl;
      astNode.childNodes.push(altTextAstNode);

      ast.push(astNode);
      return altTextOffsetTokens + imageUrlOffsetTokens;
    }
  }

  // Let's look for links
  if (token.type == TokenType.BRACKET_START) {
    let response: Array<string> = getOffsetOfTokensUntilTokenReached(
      tokens,
      tokenIndex + 1,
      TokenType.BRACKET_END
    );
    let linkContent: string = response[0];
    let linkContentOffsetTokens: i32 = parseInt(response[1]) as i32;

    let linkContentAstNode = new AstNode();
    linkContentAstNode.type = "Link Content";
    linkContentAstNode.value = linkContent;

    // We have the link content, if this is an link
    // We need to check if this is immediately followed by a parentheses
    if (
      tokens[tokenIndex + 1 + linkContentOffsetTokens].type ==
      TokenType.PAREN_START
    ) {
      let response: Array<string> = getOffsetOfTokensUntilTokenReached(
        tokens,
        tokenIndex + 1,
        TokenType.BRACKET_END
      );
      let linkUrl: string = response[0];
      let linkUrlOffsetTokens: i32 = parseInt(response[1]) as i32;

      // Let's create the Ast Node for the image
      astNode.type = "Link";
      astNode.value = linkUrl;
      astNode.childNodes.push(linkContentAstNode);

      ast.push(astNode);
      return linkContentOffsetTokens + linkUrlOffsetTokens;
    }
  }

  if (token.type == TokenType.BLOCK_QUOTE) {
    let response: Array<string> = getOffsetOfTokensUntilTokenReached(
      tokens,
      tokenIndex + 1,
      TokenType.NEWLINE
    );
    let content: string = response[0];
    let offsetTokens: i32 = parseInt(response[1]) as i32;

    astNode.type = TokenType.BLOCK_QUOTE;
    astNode.value = content;

    ast.push(astNode);
    return offsetTokens;
  }

  if (token.type == TokenType.CODE_BLOCK) {
    let response: Array<string> = getOffsetOfTokensUntilTokenReached(
      tokens,
      tokenIndex + 1,
      TokenType.CODE_BLOCK
    );
    let content: string = response[0];
    let offsetTokens: i32 = parseInt(response[1]) as i32;

    astNode.type = TokenType.CODE_BLOCK;
    astNode.value = content;

    ast.push(astNode);
    return offsetTokens;
  }

  if (token.type == TokenType.INLINE_CODE) {
    if (
      checkIfTypeIsFoundBeforeOtherType(
        tokens,
        tokenIndex + 1,
        TokenType.INLINE_CODE,
        TokenType.NEWLINE
      )
    ) {
      let response: Array<string> = getOffsetOfTokensUntilTokenReached(
        tokens,
        tokenIndex + 1,
        TokenType.NEWLINE
      );
      let content: string = response[0];
      let offsetTokens: i32 = parseInt(response[1]) as i32;

      astNode.type = TokenType.INLINE_CODE;
      astNode.value = content;

      ast.push(astNode);
      return offsetTokens;
    }
  }

  if (
    token.type == TokenType.HORIZONTAL_LINE &&
    tokens[tokenIndex + 1].type == TokenType.NEWLINE
  ) {
    astNode.type = TokenType.HORIZONTAL_LINE;
    ast.push(astNode);
    return 0;
  }

  // It did not match our cases, let's assume the node is for characters
  astNode.type = TokenType.CHARACTER;
  astNode.value = token.value;
  ast.push(astNode);
  return 0;
}

// Returns an array of strings where:
// 0: is the content between the start, and the found ending token.
// 1: is the number of tokens found before reaching the end.
function getOffsetOfTokensUntilTokenReached(
  tokens: Array<Token>,
  startTokenIndex: i32,
  stopTokenType: string
): Array<string> {
  let contentTokens: Array<Token> = getAllTokensUntilTokenReached(
    tokens,
    startTokenIndex,
    stopTokenType
  );

  let content: string = "";
  for (let i = 0; i < contentTokens.length; i++) {
    content += contentTokens[i].value;
  }

  let response = new Array<string>();

  response.push(content);
  response.push(contentTokens.length.toString());
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
