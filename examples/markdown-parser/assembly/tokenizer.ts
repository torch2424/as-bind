import { log } from "./util";

class Token {
  index: i32;
  type: string;
  value: string;
}

function isWhitespace(character: string): boolean {
  return character.includes(" ") || character.includes(" ");
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

export function markdownTokenizer(markdown: string): Array<string> {
  // TODO: I don't think array of objects work in AS?
  // Switch over to array of strings.
  // first string is index, second string is type, third string is value.
  // Then repeat until we get all of our tokens in an array
  let tokenTuples = new Array<string>(0);

  for (let i: i32 = 0; i < markdown.length; i++) {
    let tokenValue: string = markdown.charAt(i);

    // We care about newlines, as they specify blocks, and whether something is in the same newline
    if (tokenValue.includes("\n")) {
      tokenTuples.push(i.toString());
      tokenTuples.push("NewLine");
      tokenTuples.push(tokenValue);
      continue;
    }

    // Check for whitespace
    if (isWhitespace(currentCharacter)) {
      let tokenContinueLength = 0;
      tokenValue = "";
      while (
        tokenContinueLength < markdown.length - i &&
        isWhitespace(markdown.charAt(i + tokenContinueLength))
      ) {
        tokenValue += markdown.charAt(i + tokenContinueLength);
        tokenContinueLength += 1;
      }

      tokenTuples.push(i.toString());
      tokenTuples.push("Whitespace");
      tokenTuples.push(tokenValue);
      i += tokenContinueLength;
      continue;
    }

    // Check for the # Headers in the beginning of a line
    if (tokenValue.includes("#")) {
      tokenTuples.push(i.toString());
      tokenTuples.push("Header");
      tokenTuples.push(tokenValue);
      continue;
    }

    // Check for Italics
    if (tokenValue.includes("*") && markdown.charAt(i + 1).includes("*")) {
      tokenTuples.push(i.toString());
      tokenTuples.push("Italics");
      tokenTuples.push("**");

      i += 1;
      continue;
    }

    // Check for bold
    if (tokenValue.includes("_") && markdown.charAt(i + 1).includes("_")) {
      tokenTuples.push(i.toString());
      tokenTuples.push("Bold");
      tokenTuples.push("__");

      i += 1;
      continue;
    }

    // Check for strikethrough
    if (tokenValue.includes("~") && markdown.charAt(i + 1).includes("~")) {
      tokenTuples.push(i.toString());
      tokenTuples.push("Strikethrough");
      tokenTuples.push("~~");

      i += 1;
      continue;
    }

    // Check for Unordered List
    if (tokenValue.includes("*") && isWhitespace(markdown.charAt(i + 1))) {
      tokenTuples.push(i.toString());
      tokenTuples.push("Unordered List");
      tokenTuples.push("* ");

      i += 1;
      continue;
    }

    // Check for ordered list
    if (
      tokenValue.includes("1") &&
      markdown.charAt(i + 1).includes(".") &&
      isWhitespace(markdown.charAt(i + 2))
    ) {
      tokenTuples.push(i.toString());
      tokenTuples.push("Ordered List");
      tokenTuples.push("1. ");

      i += 1;
      continue;
    }

    // Check for Images
    if (token.value.includes("!") && markdown.charAt(i + 1).includes("[")) {
      tokenTuples.push(i.toString());
      tokenTuples.push("ImageStart");
      tokenTuples.push("![");

      i += 1;
      continue;
    }

    // Check for Link Brackets
    if (token.value.includes("[")) {
      tokenTuples.push(i.toString());
      tokenTuples.push("BracketStart");
      tokenTuples.push("[");
      continue;
    }

    if (token.value.includes("]")) {
      tokenTuples.push(i.toString());
      tokenTuples.push("BracketEnd");
      tokenTuples.push("[");
      continue;
    }

    // Check for Link definitions
    if (token.value.includes("(")) {
      tokenTuples.push(i.toString());
      tokenTuples.push("ParenStart");
      tokenTuples.push("(");

      continue;
    }

    if (token.value.includes(")")) {
      tokenTuples.push(i.toString());
      tokenTuples.push("ParenEnd");
      tokenTuples.push(")");

      continue;
    }

    // Check for block quotes
    if (token.value.includes(">") && isWhitespace(markdown.charAt(i + 1))) {
      tokenTuples.push(i.toString());
      tokenTuples.push("BlockQuote");
      tokenTuples.push(">");

      i += 1;
      continue;
    }

    // Check for code blocks
    if (checkForTriplet("`", i, markdown)) {
      tokenTuples.push(i.toString());
      tokenTuples.push("CodeBlock");
      tokenTuples.push("```");

      i += 2;
      continue;
    }

    // Check for inline code blocks
    if (token.value.includes("`")) {
      tokenTuples.push(i.toString());
      tokenTuples.push("InlineCode");
      tokenTuples.push("`");

      continue;
    }

    // Check for horizontal lines
    if (checkForTriplet("-", i, markdown)) {
      tokenTuples.push(i.toString());
      tokenTuples.push("HorizontalLine");
      tokenTuples.push("---");

      i += 2;
      continue;
    }

    if (checkForTriplet("=", i, markdown)) {
      tokenTuples.push(i.toString());
      tokenTuples.push("HorizontalLine");
      tokenTuples.push("---");

      i += 2;
      continue;
    }

    // We forsure have a character token
    // Check if we should updae the previous token
    if (
      i > 0 &&
      tokens.length > 0 &&
      tokens[tokens.length - 3].includes("Character")
    ) {
      tokens[tokens.length - 1] += tokenValue;
    } else {
      tokens.push(token);
      tokenTuples.push(i.toString());
      tokenTuples.push("Character");
      tokenTuples.push(tokenValue);
    }
  }

  log(tokens[6]);

  return tokens;
}
