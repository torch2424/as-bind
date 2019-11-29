export class TokenType {
  static readonly NEWLINE: string = "NewLine";
  static readonly WHITESPACE: string = "Whitespace";
  static readonly HEADER: string = "Header";
  static readonly ITALICS: string = "Italics";
  static readonly BOLD: string = "Bold";
  static readonly STRIKETHROUGH: string = "Strikethrough";
  static readonly UNORDERED_LIST_ITEM: string = "UnorderedListItem";
  static readonly ORDERED_LIST_ITEM: string = "OrderedListItem";
  static readonly IMAGE_START: string = "ImageStart";
  static readonly BRACKET_START: string = "BracketStart";
  static readonly BRACKET_END: string = "BracketEnd";
  static readonly PAREN_START: string = "ParenStart";
  static readonly PAREN_END: string = "ParenEnd";
  static readonly BLOCK_QUOTE: string = "BlockQuote";
  static readonly CODE_BLOCK: string = "CodeBlock";
  static readonly INLINE_CODE: string = "InlineCode";
  static readonly HORIZONTAL_LINE: string = "HorizontalLine";
  static readonly CHARACTER: string = "Character";
}
