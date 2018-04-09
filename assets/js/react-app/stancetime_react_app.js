/******************************************************************************
 * The stancetime.com Single Page Application (React / Redux)
 ******************************************************************************/

import React from "react";
import ReactDOM from "react-dom";
import { Provider } from "react-redux";

import fetchStances from "./actions/fetch_stances";
import AppStore from "./stores/AppStore";
import ReactApp from "./components/ReactApp";

// Initialize application state.
AppStore.dispatch( fetchStances() );

ReactDOM.render(
  <Provider store={AppStore}>
    <ReactApp />
  </Provider>,
  document.getElementById("react-app")
);
