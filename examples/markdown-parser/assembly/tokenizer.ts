import { log } from "./util";

class Token {
  index: i32;
  type: string;
  value: string;
}

let tokens = new Array<Token>(0);

function isWhitespace(character: string): boolean {
  return character.includes(" ");
}

function checkForTriplet(
  character: string,
  index: i32,
  markdown: string
): boolean {
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
    token.type = "Newline";

    tokens.push(token);
    return 0;
  }

  // Check for whitespace
  if (isWhitespace(tokenValue)) {
    tokens.type = "Whitespace";

    tokens.push(token);
    return 0;
  }

  // Check for the # Headers in the beginning of a line
  if (tokenValue.includes("#")) {
    token.type = "Header";

    tokens.push(token);
    return 0;
  }

  // Check for Italics
  if (
    tokenValue.includes("*") &&
    markdown.charAt(tokenIndex + 1).includes("*")
  ) {
    token.type = "Italics";
    token.value = "**";

    tokens.push(token);
    return 1;
  }

  // Check for bold
  if (
    tokenValue.includes("_") &&
    markdown.charAt(tokenIndex + 1).includes("_")
  ) {
    token.type = "Bold";
    token.value = "__";

    tokens.push(token);
    return 1;
  }

  // Check for strikethrough
  if (
    tokenValue.includes("~") &&
    markdown.charAt(tokenIndex + 1).includes("~")
  ) {
    token.type = "Strikethrough";
    token.value = "~~";

    tokens.push(token);
    return 1;
  }

  // Check for Unordered List
  if (
    tokenValue.includes("*") &&
    isWhitespace(markdown.charAt(tokenIndex + 1))
  ) {
    token.type = "UnorderedList";
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
    token.type = "OrderedList";
    token.value = "1. ";

    tokens.push(token);
    return 1;
  }

  // Check for Images
  if (
    tokenValue.includes("!") &&
    markdown.charAt(tokenIndex + 1).includes("[")
  ) {
    token.type = "ImageStart";
    token.value = "![";

    tokens.push(token);
    return 1;
  }

  // Check for Link Brackets
  if (tokenValue.includes("[")) {
    token.type = "BracketStart";
    token.value = "[";

    tokens.push(token);
    return 0;
  }

  if (tokenValue.includes("]")) {
    token.type = "BracketEnd";
    token.value = "]";

    tokens.push(token);
    return 0;
  }

  // Check for Link definitions
  if (tokenValue.includes("(")) {
    token.type = "ParenStart";
    token.value = "(";

    tokens.push(token);
    return 0;
  }

  if (tokenValue.includes(")")) {
    token.type = "ParenEnd";
    token.value = ")";

    tokens.push(token);
    return 0;
  }

  // Check for block quotes
  if (
    tokenValue.includes(">") &&
    isWhitespace(markdown.charAt(tokenIndex + 1))
  ) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("BlockQuote");
    tokenTuples.push(">");

    return 1;
  }

  // Check for code blocks
  if (checkForTriplet("`", tokenIndex, markdown)) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("CodeBlock");
    tokenTuples.push("```");

    return 2;
  }

  // Check for inline code blocks
  if (tokenValue.includes("`")) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("InlineCode");
    tokenTuples.push("`");

    return 0;
  }

  // Check for horizontal lines
  if (checkForTriplet("-", tokenIndex, markdown)) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("HorizontalLine");
    tokenTuples.push("---");

    return 2;
  }

  if (checkForTriplet("=", tokenIndex, markdown)) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("HorizontalLine");
    tokenTuples.push("---");

    return 2;
  }

  // We forsure have a character token
  // Check if we should update the previous token
  if (
    tokenIndex > 0 &&
    tokenTuples.length > 0 &&
    tokenTuples[tokenTuples.length - 2].includes("Character")
  ) {
    let newValue = tokenTuples[tokenTuples.length - 1];
    newValue += tokenValue;
    tokenTuples[tokenTuples.length - 1] = newValue;
    return 0;
  } else {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("Character");
    tokenTuples.push(tokenValue);
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

  return tokenTuples;
}
