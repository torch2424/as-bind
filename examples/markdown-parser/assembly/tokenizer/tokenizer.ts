import { log } from "../util";

import { Token } from "./token";
import { TokenType } from "./token-type";

let tokens = new Array<Token>(0);

function isWhitespace(character: string): bool {
  return character.includes(" ");
}

function checkForTriplet(
  character: string,
  index: i32,
  markdown: string
): bool {
  return (
    markdown.charAt(index + 0).includes(character) &&
    markdown.charAt(index + 1).includes(character) &&
    markdown.charAt(index + 2).includes(character)
  );
}

function addToken(markdown: string, tokenIndex: i32, tokenValue: string): i32 {
  let token = new Token();
  token.index = tokenIndex;
  token.value = tokenValue;

  // We care about newlines, as they specify blocks, and whether something is in the same newline
  if (tokenValue.includes("\n")) {
    token.type = TokenType.NEWLINE;

    tokens.push(token);
    return 0;
  }

  // Check for whitespace
  if (isWhitespace(tokenValue)) {
    token.type = TokenType.WHITESPACE;

    let tokenContinueLength = 0;
    tokenValue = "";

    while (
      tokenContinueLength < markdown.length - tokenIndex &&
      isWhitespace(markdown.charAt(tokenIndex + tokenContinueLength))
    ) {
      tokenValue += " ";
      tokenContinueLength += 1;
    }

    token.value = tokenValue;

    tokens.push(token);
    return tokenContinueLength - 1;
  }

  // Check for the # Headers in the beginning of a line
  if (tokenValue.includes("#")) {
    token.type = TokenType.HEADER;
    token.value = "#";

    tokens.push(token);
    return 0;
  }

  // Check for Italics
  if (
    tokenValue.includes("*") &&
    markdown.charAt(tokenIndex + 1).includes("*")
  ) {
    token.type = TokenType.ITALICS;
    token.value = "**";

    tokens.push(token);
    return 1;
  }

  // Check for bold
  if (
    tokenValue.includes("_") &&
    markdown.charAt(tokenIndex + 1).includes("_")
  ) {
    token.type = TokenType.BOLD;
    token.value = "__";

    tokens.push(token);
    return 1;
  }

  // Check for strikethrough
  if (
    tokenValue.includes("~") &&
    markdown.charAt(tokenIndex + 1).includes("~")
  ) {
    token.type = TokenType.STRIKETHROUGH;
    token.value = "~~";

    tokens.push(token);
    return 1;
  }

  // Check for Unordered List
  if (
    tokenValue.includes("*") &&
    isWhitespace(markdown.charAt(tokenIndex + 1))
  ) {
    token.type = TokenType.UNORDERED_LIST_ITEM;
    token.value = "* ";

    tokens.push(token);
    return 1;
  }

  // Check for ordered list
  if (
    tokenValue.includes("1") &&
    markdown.charAt(tokenIndex + 1).includes(".") &&
    isWhitespace(markdown.charAt(tokenIndex + 2))
  ) {
    token.type = TokenType.ORDERED_LIST_ITEM;
    token.value = "1. ";

    tokens.push(token);
    return 1;
  }

  // Check for Images
  if (
    tokenValue.includes("!") &&
    markdown.charAt(tokenIndex + 1).includes("[")
  ) {
    token.type = TokenType.IMAGE_START;
    token.value = "![";

    tokens.push(token);
    return 1;
  }

  // Check for Link Brackets
  if (tokenValue.includes("[")) {
    token.type = TokenType.BRACKET_START;
    token.value = "[";

    tokens.push(token);
    return 0;
  }

  if (tokenValue.includes("]")) {
    token.type = TokenType.BRACKET_END;
    token.value = "]";

    tokens.push(token);
    return 0;
  }

  // Check for Link definitions
  if (tokenValue.includes("(")) {
    token.type = TokenType.PAREN_START;
    token.value = "(";

    tokens.push(token);
    return 0;
  }

  if (tokenValue.includes(")")) {
    token.type = TokenType.PAREN_END;
    token.value = ")";

    tokens.push(token);
    return 0;
  }

  // Check for block quotes
  if (
    tokenValue.includes(">") &&
    isWhitespace(markdown.charAt(tokenIndex + 1))
  ) {
    token.type = TokenType.BLOCK_QUOTE;
    token.value = ">";

    tokens.push(token);
    return 1;
  }

  // Check for code blocks
  if (checkForTriplet("`", tokenIndex, markdown)) {
    token.type = TokenType.CODE_BLOCK;
    token.value = "```";

    tokens.push(token);
    return 2;
  }

  // Check for inline code blocks
  if (tokenValue.includes("`")) {
    token.type = TokenType.INLINE_CODE;
    token.value = "`";

    tokens.push(token);
    return 0;
  }

  // Check for horizontal lines
  if (checkForTriplet("-", tokenIndex, markdown)) {
    token.type = TokenType.HORIZONTAL_LINE;
    token.value = "---";

    tokens.push(token);
    return 2;
  }

  if (checkForTriplet("=", tokenIndex, markdown)) {
    token.type = TokenType.HORIZONTAL_LINE;
    token.value = "===";

    tokens.push(token);
    return 2;
  }

  // We forsure have a character token
  // Check if we should update the previous token
  if (
    tokenIndex > 0 &&
    tokens.length > 0 &&
    tokens[tokens.length - 1].type.includes(TokenType.CHARACTER)
  ) {
    tokens[tokens.length - 1].value += tokenValue;
    return 0;
  } else {
    token.type = TokenType.CHARACTER;
    token.value = tokenValue;

    tokens.push(token);
    return 0;
  }
}

export function markdownTokenizer(markdown: string): Array<Token> {
  tokens = new Array<Token>(0);

  for (let i: i32 = 0; i < markdown.length; i++) {
    let tokenValue: string = markdown.charAt(i);

    let additionalIndex = addToken(markdown, i, tokenValue);
    i += additionalIndex;
  }

  return tokens;
}
