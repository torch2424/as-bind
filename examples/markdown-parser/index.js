import { h, render, Component } from "preact";
import asbind from "../../dist/asbind.esm";

// Import our TypeScript equivalent
import { convertMarkdownToHTML } from "../../dist/examples/markdown-parser/assembly/index";
import "./index.css";

let testMarkdown = `# __asbind__ ~~convert~~ **markdown** to     html

      * Item 1
      * Item 2
      * Item 3

      ===

      ## And now we are back!

      Here is a [link to the source code](https://github.com/torch2424/asbind)

      And an image of the author!

      ![torch2424 avatar](https://avatars1.githubusercontent.com/u/1448289?s=460&v=4)

      ---

      ### More items

      1. one
      1. two
      1. three

      ===

      #### Let's write some quotes and code and stuff

      > WebAssembly is cool - Torch2424, 2019

      \`npm install asbind\`

      \`\`\`
        const someCode = "hello world!";
        // Yup we writing some code in here
      \`\`\`

      # The End!
`;

testMarkdown = `

Here is a [link to the source code](https://github.com/torch2424/asbind)


And an image of the author!

      ![torch2424 avatar](https://avatars1.githubusercontent.com/u/1448289?s=460&v=4)

`;

let asbindExportsPromise = asbind.instantiate(fetch("index.wasm"), {
  util: {
    consoleLog: asbind.wrapImportObjectFunction(message => {
      console.log(message);
    })
  },
  env: {
    abort: () => {
      console.error("AssemblyScript Import Object Aborted!");
    }
  }
});

class App extends Component {
  constructor() {
    super();

    this.state = {
      markdown: testMarkdown,
      html: ""
    };
  }

  componentDidMount() {
    this.handleChange();
  }

  async handleChange(event) {
    let markdown = this.state.markdown;
    if (event) {
      markdown = event.target.value;
    }
    const asbindExports = await asbindExportsPromise;

    // Get the assemblyscript response
    let html = asbind.call(
      asbindExports,
      asbindExports.convertMarkdownToHTML,
      markdown
    );

    this.setState({
      markdown,
      html
    });
  }

  render() {
    return (
      <div class="app">
        <h1>as-bind Markdown Parser Demo</h1>
        <p class="description">
          as-bind is a library to handle passing high-level data structures
          between AssemblyScript and JavaScript. This demo takes the input from
          the markdown text area, and passes the string directly to and exported
          function of the as-bind instantiated AssemblyScript module, and then
          binds the returned string to the result div.
        </p>
        <nav class="link-row">
          <div>
            <a href="https://github.com/torch2424/as-bind">
              Source Code (Github)
            </a>
          </div>
        </nav>
        <div class="editor-container">
          <div class="editor">
            <div class="markdown">
              <h2>Markdown</h2>
              <textarea
                value={this.state.markdown}
                onInput={event => this.handleChange(event)}
              ></textarea>
            </div>
            <div class="result">
              <h2>Result</h2>
              <div
                class="result-html"
                dangerouslySetInnerHTML={{
                  __html: this.state.html
                }}
              ></div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

// render an instance of Clock into <body>:
render(<App />, document.querySelector("#root"));
