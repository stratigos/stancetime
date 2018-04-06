import React from "react";
import { connect } from "react-redux";

import StancesList from "../components/StancesList";

const mapStateToProps = (state) => ({
  stances: state.stances
});

const StancesContainer = connect(mapStateToProps)(StancesList);

export default StancesContainer;
