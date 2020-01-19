import { h, render, Component } from "preact";
import asbind from "../../dist/as-bind.esm";

// Import our TypeScript equivalent
import { convertMarkdownToHTML } from "../../dist/ts/index";

// Import our Rust/Wasm Psuedo similar package
import cmarkInit, { format } from "pulldown-cmark-wasm";
import cmarkWasmUrl from "../../node_modules/pulldown-cmark-wasm/pkg/pulldown_cmark_wasm_bg.wasm";

// Import our css
import "./index.css";

let testMarkdown = `# __as-bind__ ~~convert~~ **markdown** to     html

      * Item 1
      * Item 2
      * Item 3

      ===

      ## And now we are back!

      Here is a [link to the source code](https://github.com/torch2424/as-bind)

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

      \`npm install as-bind\`

      \`\`\`
        const someCode = "hello world!";
        // Yup we writing some code in here
      \`\`\`

      # The End!
`;

let asbindInstancePromise = asbind.instantiate(fetch("index.wasm"), {
  util: {
    consoleLog: message => {
      console.log(message);
    }
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
    const asbindInstance = await asbindInstancePromise;

    // Get the assemblyscript response
    let html = asbindInstance.exports.convertMarkdownToHTML(markdown);

    // Log the input and output to the console

    console.log(`
Input Markdown:

${markdown}

------

as-bind response:

${html}
`);

    this.setState({
      markdown,
      html
    });
  }

  async runBenchmark() {
    // Get all of our wasm instances
    await cmarkInit(cmarkWasmUrl);
    const asbindInstance = await asbindInstancePromise;

    // Create all of our test functions
    const testFunctions = {
      "pulldown-cmark": format,
      "as-bind MD Assemblyscript": asbindInstance.exports.convertMarkdownToHTML,
      "as-bind MD Typescript": convertMarkdownToHTML
    };

    // Create all of our markdown number of copies
    const numberToCopyForLargeMarkdown = [1, 5, 25, 50, 100];

    // Iterate through our test functions and their number of copies
    Object.keys(testFunctions).forEach(testFunctionKey => {
      numberToCopyForLargeMarkdown.forEach(numberToCopy => {
        try {
          // Create our large markdown
          let largeMarkdown = "";
          for (let i = 0; i < numberToCopy; i++) {
            largeMarkdown += testMarkdown;
          }

          // Get our start time
          let startTime = performance.now();

          // Run our function
          testFunctions[testFunctionKey](largeMarkdown);

          // Record our end time
          let endTime = performance.now();

          // Log our result
          console.log(
            `[${testFunctionKey}, ${numberToCopy}]: ${endTime - startTime}`
          );
        } catch (error) {
          // Log our result
          console.log(`[${testFunctionKey}, ${numberToCopy}]: Errored`);
        }
      });
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
          binds the returned string to the result div. The input and response
          are logged into the JavaScript console.
        </p>
        <p class="description">
          <b>as-bind version:</b> {asbind.version}
        </p>
        <nav class="link-row">
          <div>
            <a href="https://github.com/torch2424/as-bind">
              Source Code (Github)
            </a>
          </div>
          <div>
            <button onClick={() => this.runBenchmark()}>
              Benchmark (See JS Console)
            </button>
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
