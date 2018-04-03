import "phoenix_html"

import React from "react"
import ReactDOM from "react-dom"

class ReactApp extends React.Component {
  render() {
    return(
      <div>
        <h1>Stance Time</h1>
        <p>
          <em>Under Construction</em>
        </p>
        <p>
          Check back soon!
        </p>
      </div>
    )
  }
}

ReactDOM.render(
  <ReactApp/>,
  document.getElementById("react-app")
)
