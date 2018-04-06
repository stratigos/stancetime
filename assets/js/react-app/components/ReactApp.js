import "phoenix_html"

import React from "react"
import ReactDOM from "react-dom"
import { BrowserRouter, Route, Switch } from "react-router-dom";

import StancesContainer from '../containers/StancesContainer';

class ReactApp extends React.Component {
  render() {
    return(
      <div id="react-app-container">
        <div id="test-header">
          <h1>Stance Time</h1>
          <p>
            <em>Under Construction</em>
          </p>
          <p>
            Check back soon!
          </p>
        </div>
        <div id="test-data">
          <StancesContainer />
        </div>
      </div>
    )
  }
}

export default ReactApp;
