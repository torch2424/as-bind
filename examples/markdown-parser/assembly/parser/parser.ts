import { log } from "../util";

import { Token } from "../tokenizer/token";
import { TokenType } from "../tokenizer/token-type";

import { AstNode } from "./ast";
import { AstNodeType } from "./ast-node-type";

function addTokensToAst(tokens: Array<Token>, ast: Array<AstNode>): void {
  for (let i: i32 = 0; i < tokens.length; i++) {
    let indexOffset = addAstNode(ast, tokens, i);
    i += indexOffset;
  }
}

export function markdownTokenParser(tokens: Array<Token>): Array<AstNode> {
  let ast = new Array<AstNode>(0);

  addTokensToAst(tokens, ast);

  return ast;
}

function getNewAstNode(): AstNode {
  // AS Bugfix: Make sure the child array for the AstNode is properly initialized
  // E.g, Make sure the child nodes of the ast is properly allocated as a new AST
  let astNode: AstNode = new AstNode();
  astNode.childNodes = new Array<AstNode>(0);
  return astNode;
}

function addAstNode(
  ast: Array<AstNode>,
  tokens: Array<Token>,
  tokenIndex: i32
): i32 {
  let astNode: AstNode = getNewAstNode();
  let token: Token = tokens[tokenIndex];

  if (token.type == TokenType.NEWLINE) {
    astNode.type = AstNodeType.NEWLINE;
    astNode.value = token.value;
    ast.push(astNode);
    return 0;
  }

  if (token.type == TokenType.WHITESPACE) {
    astNode.type = AstNodeType.WHITESPACE;
    astNode.value = token.value;
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
      let contentTokens: Array<Token> = getAllTokensUntilTokenReached(
        tokens,
        tokenIndex + indexOffset + 1,
        TokenType.NEWLINE
      );
      let content: string = getTokensAsString(contentTokens);
      let offsetTokenLength: i32 = contentTokens.length;

      astNode.type = AstNodeType.HEADER;
      astNode.value = headerLevel.toString();

      indexOffset += offsetTokenLength;

      ast.push(astNode);

      // Go through the child tokens as well
      addTokensToAst(contentTokens, astNode.childNodes);

      return offsetTokenLength + headerLevel;
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
      let contentTokens: Array<Token> = getAllTokensUntilTokenReached(
        tokens,
        tokenIndex + 1,
        TokenType.ITALICS
      );
      let content: string = getTokensAsString(contentTokens);
      let offsetTokenLength: i32 = contentTokens.length;

      astNode.type = AstNodeType.ITALICS;

      // Go through the child tokens as well
      addTokensToAst(contentTokens, astNode.childNodes);

      ast.push(astNode);
      return offsetTokenLength + 1;
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
      let contentTokens: Array<Token> = getAllTokensUntilTokenReached(
        tokens,
        tokenIndex + 1,
        TokenType.BOLD
      );
      let content: string = getTokensAsString(contentTokens);
      let offsetTokenLength: i32 = contentTokens.length;

      astNode.type = AstNodeType.BOLD;

      // Go through the child tokens as well
      addTokensToAst(contentTokens, astNode.childNodes);

      ast.push(astNode);
      return offsetTokenLength + 1;
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
      let contentTokens: Array<Token> = getAllTokensUntilTokenReached(
        tokens,
        tokenIndex + 1,
        TokenType.STRIKETHROUGH
      );
      let content: string = getTokensAsString(contentTokens);
      let offsetTokenLength: i32 = contentTokens.length;

      astNode.type = AstNodeType.STRIKETHROUGH;

      // Go through the child tokens as well
      addTokensToAst(contentTokens, astNode.childNodes);

      ast.push(astNode);
      return offsetTokenLength + 1;
    }
  }

  // Doing lists as one, as they share list item logic
  if (
    token.type == TokenType.UNORDERED_LIST_ITEM ||
    token.type == TokenType.ORDERED_LIST_ITEM
  ) {
    // Set up the item type we are looking for
    let listItemType: string = "";

    // Set our list node, and add it to the parent ast.
    if (token.type == TokenType.UNORDERED_LIST_ITEM) {
      astNode.type = AstNodeType.UNORDERED_LIST;
      listItemType = TokenType.UNORDERED_LIST_ITEM;
    } else {
      astNode.type = AstNodeType.ORDERED_LIST;
      listItemType = TokenType.ORDERED_LIST_ITEM;
    }
    ast.push(astNode);

    // Need to add all the list items to our list
    let tokensToSkip = 0;
    let tokensSkippedForWhitespace = 0;
    let listItemTokenIndex = tokenIndex;
    while (
      listItemTokenIndex + tokensSkippedForWhitespace < tokens.length &&
      tokens[listItemTokenIndex + tokensSkippedForWhitespace].type ==
        listItemType
    ) {
      // Add the tokens we skipped for whitespace to our other skip/index values
      tokensToSkip += tokensSkippedForWhitespace;
      listItemTokenIndex += tokensSkippedForWhitespace;

      // Create the node for the list item
      let listItemAstNode: AstNode = getNewAstNode();
      listItemAstNode.type = AstNodeType.LIST_ITEM;

      // Get its content tokens
      let contentTokens: Array<Token> = getAllTokensUntilTokenReached(
        tokens,
        listItemTokenIndex + 1,
        TokenType.NEWLINE
      );
      let content: string = getTokensAsString(contentTokens);
      let offsetTokenLength: i32 = contentTokens.length;

      // Add the content to the list item
      addTokensToAst(contentTokens, listItemAstNode.childNodes);

      // Add the list item to the list
      astNode.childNodes.push(listItemAstNode);

      let nextTokenIndex = offsetTokenLength + 2;

      // Increase our values to keep looking through nodes!
      tokensToSkip += nextTokenIndex;
      listItemTokenIndex += nextTokenIndex;

      // Need to handle whitespace here for tabbing as well
      tokensSkippedForWhitespace = 0;
      while (
        listItemTokenIndex + tokensSkippedForWhitespace < tokens.length &&
        tokens[listItemTokenIndex + tokensSkippedForWhitespace].type ==
          TokenType.WHITESPACE
      ) {
        tokensSkippedForWhitespace += 1;
      }
    }

    return tokensToSkip;
  }

  // Let's look for images
  if (token.type == TokenType.IMAGE_START) {
    let altTokens: Array<Token> = getAllTokensUntilTokenReached(
      tokens,
      tokenIndex + 1,
      TokenType.BRACKET_END
    );
    let altText: string = getTokensAsString(altTokens);
    let altTextOffsetTokenLength: i32 = altTokens.length;

    let altTextAstNode = getNewAstNode();
    altTextAstNode.type = "Alt";
    altTextAstNode.value = altText;

    // We have the alt text, if this is an image
    // We need to check if this is immediately followed by a parentheses
    if (
      tokens[tokenIndex + altTextOffsetTokenLength + 2].type ==
      TokenType.PAREN_START
    ) {
      let imageTokens: Array<Token> = getAllTokensUntilTokenReached(
        tokens,
        tokenIndex + altTextOffsetTokenLength + 3,
        TokenType.PAREN_END
      );
      let imageUrl: string = getTokensAsString(imageTokens);
      let imageUrlOffsetTokenLength: i32 = imageTokens.length;

      // Let's create the Ast Node for the image
      astNode.type = AstNodeType.IMAGE;
      astNode.value = imageUrl;
      astNode.childNodes.push(altTextAstNode);

      ast.push(astNode);
      return altTextOffsetTokenLength + imageUrlOffsetTokenLength + 4;
    }
  }

  // Let's look for links
  if (token.type == TokenType.BRACKET_START) {
    let linkTokens: Array<Token> = getAllTokensUntilTokenReached(
      tokens,
      tokenIndex + 1,
      TokenType.BRACKET_END
    );
    let linkContent: string = getTokensAsString(linkTokens);
    let linkContentOffsetTokenLength: i32 = linkTokens.length;

    let linkContentAstNode = getNewAstNode();
    linkContentAstNode.type = "Link Content";
    linkContentAstNode.value = linkContent;

    // We have the link content, if this is an link
    // We need to check if this is immediately followed by a parentheses
    if (
      tokens[tokenIndex + linkContentOffsetTokenLength + 2].type ==
      TokenType.PAREN_START
    ) {
      let urlTokens: Array<Token> = getAllTokensUntilTokenReached(
        tokens,
        tokenIndex + linkContentOffsetTokenLength + 3,
        TokenType.PAREN_END
      );
      let urlContent: string = getTokensAsString(urlTokens);
      let urlContentOffsetTokenLength: i32 = urlTokens.length;

      // Let's create the Ast Node for the image
      astNode.type = AstNodeType.LINK;
      astNode.value = urlContent;
      astNode.childNodes.push(linkContentAstNode);

      ast.push(astNode);
      return linkContentOffsetTokenLength + urlContentOffsetTokenLength + 4;
    }
  }

  if (token.type == TokenType.BLOCK_QUOTE) {
    let contentTokens: Array<Token> = getAllTokensUntilTokenReached(
      tokens,
      tokenIndex + 1,
      TokenType.NEWLINE
    );
    let content: string = getTokensAsString(contentTokens);
    let offsetTokenLength: i32 = contentTokens.length;

    astNode.type = AstNodeType.BLOCK_QUOTE;
    astNode.value = content;

    ast.push(astNode);
    return offsetTokenLength + 1;
  }

  if (token.type == TokenType.CODE_BLOCK) {
    let contentTokens: Array<Token> = getAllTokensUntilTokenReached(
      tokens,
      tokenIndex + 1,
      TokenType.CODE_BLOCK
    );
    let content: string = getTokensAsString(contentTokens);
    let offsetTokenLength: i32 = contentTokens.length;

    astNode.type = AstNodeType.CODE_BLOCK;
    astNode.value = content;

    ast.push(astNode);
    return offsetTokenLength + 1;
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
      let contentTokens: Array<Token> = getAllTokensUntilTokenReached(
        tokens,
        tokenIndex + 1,
        TokenType.INLINE_CODE
      );
      let content: string = getTokensAsString(contentTokens);
      let offsetTokenLength: i32 = contentTokens.length;

      astNode.type = AstNodeType.INLINE_CODE;
      astNode.value = content;

      ast.push(astNode);
      return offsetTokenLength + 1;
    }
  }

  if (
    token.type == TokenType.HORIZONTAL_LINE &&
    tokens[tokenIndex + 1].type == TokenType.NEWLINE
  ) {
    astNode.type = AstNodeType.HORIZONTAL_LINE;
    ast.push(astNode);
    return 0;
  }

  // It did not match our cases, let's assume the node is for characters
  astNode.type = AstNodeType.CHARACTER;
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

// Function to return tokens as a string
function getTokensAsString(tokens: Array<Token>): string {
  let content: string = "";
  for (let i = 0; i < tokens.length; i++) {
    content += tokens[i].value;
  }
  return content;
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
