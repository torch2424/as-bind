import { log } from "./util";

class Token {
  type: string;
  value: string;
}

function isWhitespace(character: string): boolean {
  return character === " " || character === " ";
}

function checkForTriplet(
  character: string,
  index: i32,
  markdown: string
): boolean {
  return (
    markdown.charAt(index + 0) === character &&
    markdown.charAt(index + 1) === character &&
    markdown.charAt(index + 2) === character
  );
}

export function markdownTokenizer(markdown: string): Array<Token> {
  let tokens = new Array<Token>(0);

  log("from ts");

  for (let i: i32 = 0; i < markdown.length; i++) {
    let token = new Token();
    token.value = markdown.charAt(i);

    log(token.value);

    // We care about newlines, as they specify blocks, and whether something is in the same newline
    if (token.value === "\n") {
      token.type === "NewLine";
      continue;
    }

    // Check for whitespace
    if (isWhitespace(token.value)) {
      let tokenContinueLength = 0;
      while (
        tokenContinueLength < markdown.length - i &&
        isWhitespace(markdown.charAt(i + tokenContinueLength))
      ) {
        token.value += markdown.charAt(i + tokenContinueLength);
        tokenContinueLength += 1;
      }
      i += tokenContinueLength;

      token.type = "Whitespace";
      continue;
    }

    // Check for the # Headers in the beginning of a line
    if (token.value === "#") {
      token.type = "Header";
      continue;
    }

    // Check for Italics
    if (token.value === "*" && markdown.charAt(i + 1) === "*") {
      token.value = "**";
      token.type = "Italics";
      i += 1;
      continue;
    }

    // Check for bold
    if (token.value === "_" && markdown.charAt(i + 1) === "_") {
      token.value = "__";
      token.type = "Bold";
      i += 1;
      continue;
    }

    // Check for strikethrough
    if (token.value === "~" && markdown.charAt(i + 1) === "~") {
      token.value = "~~";
      token.type = "Strikethrough";
      i += 1;
      continue;
    }

    // Check for Unordered List
    if (token.value === "*" && isWhitespace(markdown.charAt(i + 1))) {
      token.value = "* ";
      token.type = "Unordered List";
      i += 1;
      continue;
    }

    // Check for ordered list
    if (
      token.value === "1" &&
      markdown.charAt(i + 1) === "." &&
      isWhitespace(markdown.charAt(i + 2))
    ) {
      token.value = "1. ";
      token.type = "Ordered List";
      i += 1;
      continue;
    }

    // Check for Images
    if (token.value === "!" && markdown.charAt(i + 1) === "[") {
      token.value = "![";
      token.type = "ImageStart";
      i += 1;
      continue;
    }

    // Check for Link Brackets
    if (token.value === "[") {
      token.type = "BracketStart";
      continue;
    }

    if (token.value === "]") {
      token.type = "BracketEnd";
      continue;
    }

    // Check for Link definitions
    if (token.value === "(") {
      token.type = "ParenStart";
      continue;
    }

    if (token.value === ")") {
      token.type = "ParenEnd";
      continue;
    }

    // Check for block quotes
    if (token.value === ">" && isWhitespace(markdown.charAt(i + 1))) {
      token.value = "> ";
      token.type = "BlockQuote";
      i += 1;
      continue;
    }

    // Check for code blocks
    if (checkForTriplet("`", i, markdown)) {
      token.value = "```";
      token.type = "CodeBlock";
      i += 2;
      continue;
    }

    // Check for inline code blocks
    if (token.value === "`") {
      token.type = "InlineCode";
      continue;
    }

    // Check for horizontal lines
    if (checkForTriplet("-", i, markdown)) {
      token.value = "---";
      token.type = "HorizontalLine";
      i += 2;
      continue;
    }

    if (checkForTriplet("=", i, markdown)) {
      token.value = "===";
      token.type = "HorizontalLine";
      i += 2;
      continue;
    }

    // Lastly, simply add the character
    token.type = "Character";
  }

  return tokens;
}
