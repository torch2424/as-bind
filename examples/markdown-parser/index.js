import { h, render, Component } from "preact";
import asbind from "../../dist/asbind.esm";

// Import our TypeScript equivalent
import { convertMarkdownToHTML } from "../../dist/examples/markdown-parser/assembly/index";

import "index.css";

const testMarkdown = `# __asbind__ ~~convert~~ **markdown** to     html

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

      > "WebAssembly is cool" - Torch2424, 2019

      \`npm install asbind\`

      \`\`\`
        const someCode = "hello world!";
        // Yup we writing some code in here
      \`\`\`

      # The End!
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
      assemblyscriptResponse: "",
      typescriptResponse: ""
    };
  }

  async componentDidMount() {
    const asbindExports = await asbindExportsPromise;

    let largeTestMarkdown = "";
    for (let i = 0; i < 15; i++) {
      largeTestMarkdown += `${testMarkdown}\n`;
    }

    // Get the assemblyscript response
    const asStart = performance.now();
    let assemblyscriptResponse = asbind.call(
      asbindExports,
      asbindExports.convertMarkdownToHTML,
      largeTestMarkdown
    );
    const asEnd = performance.now();
    // console.log('asbind assemblyscript response:');
    // console.log(assemblyscriptResponse);

    // Get the typescript response
    const tsStart = performance.now();
    let typescriptResponse = convertMarkdownToHTML(largeTestMarkdown);
    // console.log('asbind typescript response:');
    // console.log(typescriptResponse);
    const tsEnd = performance.now();

    console.log(`AssemblyScript (performance.now()) Time: ${asEnd - asStart}`);
    console.log(`TypeScript (preformance.now()) Time: ${tsEnd - tsStart}`);

    this.setState({
      assemblyscriptResponse: assemblyscriptResponse,
      typescriptResponse: typescriptResponse
    });
  }

  render() {
    let time = new Date().toLocaleTimeString();
    return (
      <div>
        <span>Testing Time: {time}</span>
        <h1>AssemblyScript</h1>
        <h2>Div with Html:</h2>
        <div
          dangerouslySetInnerHTML={{
            __html: this.state.assemblyscriptResponse
          }}
        ></div>
        <h2>Pre with Html:</h2>
        <pre
          dangerouslySetInnerHTML={{
            __html: this.state.assemblyscriptResponse
          }}
        ></pre>
        <h1>TypeScript</h1>
        <h2>Div with Html:</h2>
        <div
          dangerouslySetInnerHTML={{ __html: this.state.typescriptResponse }}
        ></div>
        <h2>Pre with Html:</h2>
        <pre
          dangerouslySetInnerHTML={{ __html: this.state.typescriptResponse }}
        ></pre>
      </div>
    );
  }
}

// render an instance of Clock into <body>:
render(<App />, document.querySelector("#root"));
