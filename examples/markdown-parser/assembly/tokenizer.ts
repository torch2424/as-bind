import { log } from "./util";

class Token {
  index: i32;
  type: string;
  value: string;
}

function isWhitespace(character: string): boolean {
  return character.indexOf(" ") === 0 || character.indexOf(" ") === 0;
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

  let currentToken = new Token();

  for (let i: i32 = 0; i < markdown.length; i++) {
    let token = new Token();
    // Lastly, simply add the character
    token.type = "Character";
    token.index = i;
    token.value = markdown.charAt(i);

    // Pushing / Upadating the character token happens last

    // We care about newlines, as they specify blocks, and whether something is in the same newline
    if (token.value === "\n") {
      token.type === "NewLine";
      tokens.push(token);
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
      tokens.push(token);
      continue;
    }

    // Check for the # Headers in the beginning of a line
    if (token.value.indexOf("#") === 0) {
      log("hello");
      token.type = "Header";
      tokens.push(token);
      continue;
    }

    log(token.value);

    // Check for Italics
    if (
      token.value.indexOf("*") === 0 &&
      markdown.charAt(i + 1).indexOf("*") === 0
    ) {
      log("itsics;");
      token.value = "**";
      token.type = "Italics";
      tokens.push(token);
      i += 1;
      continue;
    }

    // Check for bold
    if (token.value === "_" && markdown.charAt(i + 1) === "_") {
      token.value = "__";
      token.type = "Bold";
      tokens.push(token);
      i += 1;
      continue;
    }

    // Check for strikethrough
    if (token.value === "~" && markdown.charAt(i + 1) === "~") {
      token.value = "~~";
      token.type = "Strikethrough";
      tokens.push(token);
      i += 1;
      continue;
    }

    // Check for Unordered List
    if (token.value === "*" && isWhitespace(markdown.charAt(i + 1))) {
      token.value = "* ";
      token.type = "Unordered List";
      tokens.push(token);
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
      tokens.push(token);
      i += 1;
      continue;
    }

    // Check for Images
    if (token.value === "!" && markdown.charAt(i + 1) === "[") {
      token.value = "![";
      token.type = "ImageStart";
      tokens.push(token);
      i += 1;
      continue;
    }

    // Check for Link Brackets
    if (token.value === "[") {
      token.type = "BracketStart";
      tokens.push(token);
      continue;
    }

    if (token.value === "]") {
      token.type = "BracketEnd";
      tokens.push(token);
      continue;
    }

    // Check for Link definitions
    if (token.value === "(") {
      token.type = "ParenStart";
      continue;
    }

    if (token.value === ")") {
      token.type = "ParenEnd";
      tokens.push(token);
      continue;
    }

    // Check for block quotes
    if (token.value === ">" && isWhitespace(markdown.charAt(i + 1))) {
      token.value = "> ";
      token.type = "BlockQuote";
      tokens.push(token);
      i += 1;
      continue;
    }

    // Check for code blocks
    if (checkForTriplet("`", i, markdown)) {
      token.value = "```";
      token.type = "CodeBlock";
      tokens.push(token);
      i += 2;
      continue;
    }

    // Check for inline code blocks
    if (token.value === "`") {
      token.type = "InlineCode";
      tokens.push(token);
      continue;
    }

    // Check for horizontal lines
    if (checkForTriplet("-", i, markdown)) {
      token.value = "---";
      token.type = "HorizontalLine";
      tokens.push(token);
      i += 2;
      continue;
    }

    if (checkForTriplet("=", i, markdown)) {
      token.value = "===";
      token.type = "HorizontalLine";
      tokens.push(token);
      i += 2;
      continue;
    }

    // We forsure have a character token
    // Check if we should updae the previous token
    if (
      token.type === "Character" &&
      i > 0 &&
      tokens.length > 0 &&
      tokens[tokens.length - 1].type === "Character"
    ) {
      tokens[tokens.length - 1].value += token.value;
    } else {
      tokens.push(token);
    }
  }

  log("Tokens:");
  for (let i = 0; i < tokens.length; i++) {
    log("yo");
    log(tokens[i].value);
  }

  log("Done Tokenizing!");

  return tokens;
}
