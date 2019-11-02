import { log } from "./util";

let tokenTuples = new Array<string>(0);

class Token {
  index: i32;
  type: string;
  value: string;
}

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

function addTokenToTuples(
  markdown: string,
  tokenIndex: i32,
  tokenValue: string
): i32 {
  // We care about newlines, as they specify blocks, and whether something is in the same newline
  if (tokenValue.includes("\n")) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("NewLine");
    tokenTuples.push(tokenValue);
    return 0;
  }

  // Check for whitespace
  if (isWhitespace(tokenValue)) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("Whitespace");
    tokenTuples.push(tokenValue);
    return 0;
  }

  // Check for the # Headers in the beginning of a line
  if (tokenValue.includes("#")) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("Header");
    tokenTuples.push(tokenValue);
    return 0;
  }

  // Check for Italics
  if (
    tokenValue.includes("*") &&
    markdown.charAt(tokenIndex + 1).includes("*")
  ) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("Italics");
    tokenTuples.push("**");

    return 1;
  }

  // Check for bold
  if (
    tokenValue.includes("_") &&
    markdown.charAt(tokenIndex + 1).includes("_")
  ) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("Bold");
    tokenTuples.push("__");

    return 1;
  }

  // Check for strikethrough
  if (
    tokenValue.includes("~") &&
    markdown.charAt(tokenIndex + 1).includes("~")
  ) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("Strikethrough");
    tokenTuples.push("~~");

    return 1;
  }

  // Check for Unordered List
  if (
    tokenValue.includes("*") &&
    isWhitespace(markdown.charAt(tokenIndex + 1))
  ) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("Unordered List");
    tokenTuples.push("* ");

    return 1;
  }

  // Check for ordered list
  if (
    tokenValue.includes("1") &&
    markdown.charAt(tokenIndex + 1).includes(".") &&
    isWhitespace(markdown.charAt(tokenIndex + 2))
  ) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("Ordered List");
    tokenTuples.push("1. ");

    return 1;
  }

  // Check for Images
  if (
    tokenValue.includes("!") &&
    markdown.charAt(tokenIndex + 1).includes("[")
  ) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("ImageStart");
    tokenTuples.push("![");

    return 1;
  }

  // Check for Link Brackets
  if (tokenValue.includes("[")) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("BracketStart");
    tokenTuples.push("[");
    return 0;
  }

  if (tokenValue.includes("]")) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("BracketEnd");
    tokenTuples.push("[");
    return 0;
  }

  // Check for Link definitions
  if (tokenValue.includes("(")) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("ParenStart");
    tokenTuples.push("(");

    return 0;
  }

  if (tokenValue.includes(")")) {
    tokenTuples.push(tokenIndex.toString());
    tokenTuples.push("ParenEnd");
    tokenTuples.push(")");

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

export function markdownTokenizer(markdown: string): Array<string> {
  tokenTuples = new Array<string>(0);

  for (let i: i32 = 0; i < markdown.length; i++) {
    let tokenValue: string = markdown.charAt(i);

    let additionalIndex = addTokenToTuples(markdown, i, tokenValue);
    i += additionalIndex;
  }

  return tokenTuples;
}
