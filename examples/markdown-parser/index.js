import { h, render, Component } from "preact";
import asbind from "../../dist/asbind.esm";

import "index.css";

let asbindExportsPromise = asbind.instantiateStreaming(fetch("index.wasm"), {
  index: {
    consoleLog: () => {}
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

  onComponentDidMount() {}

  render() {
    let time = new Date().toLocaleTimeString();
    return <span>{time}</span>;
  }
}

// render an instance of Clock into <body>:
render(<App />, document.querySelector("#root"));
