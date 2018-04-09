import "phoenix_html"

import React from "react"
import ReactDOM from "react-dom"
import { BrowserRouter, Route, Switch } from "react-router-dom";

import Header from "./Header";
import Construction from "./Construction";
import StancesContainer from "../containers/StancesContainer";

class ReactApp extends React.Component {
  render() {
    return(
      <div id="react-app-container h-100">
        <Header />
        <Construction />
        <div id="test-data">
          <StancesContainer />
        </div>
      </div>
    )
  }
}

export default ReactApp;
