import { h, render, Component } from "preact";
import asbind from "../../dist/asbind.esm";

import "index.css";

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
      htmlResponse: ""
    };
  }

  async componentDidMount() {
    const asbindExports = await asbindExportsPromise;
    let response = asbind.call(
      asbindExports,
      asbindExports.convertMarkdownToHTML,
      `# __asbind__ ~~convert~~ **markdown** to     html

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
        
        # The End!`
    );
    console.log("asbind response:");
    console.log(response);
    this.setState({
      htmlResponse: response
    });
  }

  render() {
    let time = new Date().toLocaleTimeString();
    return (
      <div>
        <span>Testing Time: {time}</span>
        <h1>Div with Html:</h1>
        <div
          dangerouslySetInnerHTML={{ __html: this.state.htmlResponse }}
        ></div>
        <h2>Pre with Html:</h2>
        <pre
          dangerouslySetInnerHTML={{ __html: this.state.htmlResponse }}
        ></pre>
      </div>
    );
  }
}

// render an instance of Clock into <body>:
render(<App />, document.querySelector("#root"));
