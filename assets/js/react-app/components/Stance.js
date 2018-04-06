import React from "react";
import PropTypes from "prop-types";


/**
 * Functional component for composing `Stance` data.
 *  - A `Stance` is a context of the Phoenix application.
 */
const Stance = (props) => {

  return(
    <div className="stance-container">
      <ul>
        <li>
          <strong>Name: </strong>{props.stance.name}
        </li>
        <li>
          <strong>Description: </strong>{props.stance.description.substring(0, 30)}&hellip;
        </li>
      </ul>
    </div>
  );

};

Stance.defaultProps = {
  stanceId: 0,
  stance: {
    id: 0,
    name: "",
    description: ""
  }
};

Stance.propTypes= {
  stanceId: PropTypes.number.isRequired,
  stance: PropTypes.shape({
    id: PropTypes.number.isRequired,
    name: PropTypes.string.isRequired,
    description: PropTypes.string.isRequired
  }).isRequired
};

export default Stance;
