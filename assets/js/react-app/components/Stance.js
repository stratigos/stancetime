import React from "react";
import PropTypes from "prop-types";


/**
 * Functional component for composing `Stance` data.
 *  - A `Stance` is a context of the Phoenix application.
 */
const Stance = (props) => {

  return(
    <div className="stance-container card border-secondary bg-dark">
      <div className="card-body">
        <h5 className="card-title text-info">{props.stance.name}</h5>
        <p className="card-text">{props.stance.description.substring(0, 30)}&hellip;</p>
        <a href="#" class="card-link">Practice</a>
        <a href="#" class="card-link">More Info</a>
      </div>
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
