// Wasm module to do a basic markdown to HTML

// Export asbind
export * from "../../../dist/asbind";

import { markdownTokenizer } from "./tokenizer";

export function convertMarkdownToHTML(markdown: string): string {
  let tokens = markdownTokenizer(markdown);
  return "";
}
