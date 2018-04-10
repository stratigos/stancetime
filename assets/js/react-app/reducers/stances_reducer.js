import { SET_STANCES } from "../constants/action_types";

const stancesReducer = (stances = [], action) => {
  switch (action.type) {
    case SET_STANCES:
      return action.payload.data;
  }

  return stances;
};

export default stancesReducer;
