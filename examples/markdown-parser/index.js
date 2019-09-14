import { h, render, Component } from "preact";
import asbind from "../../dist/asbind.esm";

import "index.css";

let asbindExportsPromise = asbind.instantiate(fetch("index.wasm"), {
  index: {
    consoleLog: asbind.wrapImportObjectFunction(message => {
      console.log("asdasd");
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
    console.log("sup", asbindExports);
    const helloWorldResponse = asbind.call(
      asbindExports,
      asbindExports.convertMarkdownToHTML,
      "# asbind conver markdown to html"
    );
  }

  render() {
    let time = new Date().toLocaleTimeString();
    return <span>{time}</span>;
  }
}

// render an instance of Clock into <body>:
render(<App />, document.querySelector("#root"));
