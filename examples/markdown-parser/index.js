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
  }

  async componentDidMount() {
    const asbindExports = await asbindExportsPromise;
    let response = asbind.call(
      asbindExports,
      asbindExports.convertMarkdownToHTML,
      "# asbind **convert** markdown to     html"
    );
    console.log("Response: ", response);
  }

  render() {
    let time = new Date().toLocaleTimeString();
    return <span>{time}</span>;
  }
}

// render an instance of Clock into <body>:
render(<App />, document.querySelector("#root"));
