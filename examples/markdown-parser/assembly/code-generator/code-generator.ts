import { log } from "../util";

import { Token } from "../tokenizer/token";
import { TokenType } from "../tokenizer/token-type";

import { AstNode } from "../parser/ast";
import { AstNodeType } from "../parser/ast-node-type";

export function generateHtmlString(ast: Array<AstNode>): string {
  let htmlString: string = "";

  for (let i = 0; i < ast.length; i++) {
    htmlString += generateHtmlStringForAstNode(ast[i], ast, i);
  }

  return htmlString;
}

function generateHtmlStringForAstNode(
  astNode: AstNode,
  ast: Array<AstNode>,
  index: i32
): string {
  let htmlString: string = "";

  if (astNode.type == AstNodeType.NEWLINE) {
    htmlString = "<br />";
    return htmlString;
  }

  // WhiteSpace value should be used

  if (astNode.type == AstNodeType.HEADER) {
    let headerTag = "h" + astNode.value;

    htmlString = "<" + headerTag + ">";
    htmlString += generateHtmlString(astNode.childNodes);
    htmlString += "</" + headerTag + ">";
    return htmlString;
  }

  if (astNode.type == AstNodeType.ITALICS) {
    htmlString = "<i>";
    htmlString += generateHtmlString(astNode.childNodes);
    htmlString += "</i>";
    return htmlString;
  }

  if (astNode.type == AstNodeType.BOLD) {
    htmlString = "<b>";
    htmlString += generateHtmlString(astNode.childNodes);
    htmlString += "</b>";
    return htmlString;
  }

  if (astNode.type == AstNodeType.STRIKETHROUGH) {
    htmlString = "<s>";
    htmlString += generateHtmlString(astNode.childNodes);
    htmlString += "</s>";
    return htmlString;
  }

  if (astNode.type == AstNodeType.UNORDERED_LIST) {
    htmlString = "<ul>";
    htmlString += generateHtmlString(astNode.childNodes);
    htmlString += "</ul>";
    return htmlString;
  }

  if (astNode.type == AstNodeType.ORDERED_LIST) {
    htmlString = "<ol>";
    htmlString += generateHtmlString(astNode.childNodes);
    htmlString += "</ol>";
    return htmlString;
  }

  if (astNode.type == AstNodeType.LIST_ITEM) {
    htmlString = "<li>";
    htmlString += generateHtmlString(astNode.childNodes);
    htmlString += "</li>";
    return htmlString;
  }

  if (astNode.type == AstNodeType.IMAGE) {
    htmlString = "<img ";
    htmlString += 'src="' + astNode.value + '"';
    htmlString += 'alt="' + astNode.childNodes[0].value + '"';
    htmlString += " />";
    return htmlString;
  }

  if (astNode.type == AstNodeType.LINK) {
    htmlString = "<a ";
    htmlString += 'href="' + astNode.value + '">';
    htmlString += astNode.childNodes[0].value;
    htmlString += "</a>";
    return htmlString;
  }

  if (astNode.type == AstNodeType.BLOCK_QUOTE) {
    htmlString = "<q>";
    htmlString += astNode.value;
    htmlString += "</q>";
    return htmlString;
  }

  if (
    astNode.type == AstNodeType.CODE_BLOCK ||
    astNode.type == AstNodeType.INLINE_CODE
  ) {
    htmlString = "<code>";
    htmlString += astNode.value;
    htmlString += "</code>";
    return htmlString;
  }

  if (astNode.type == AstNodeType.HORIZONTAL_LINE) {
    htmlString = "<hr />";
    return htmlString;
  }

  // Character value should be used

  // It must be a node with a 1:1 value, return the value
  htmlString = astNode.value;

  return htmlString;
}
