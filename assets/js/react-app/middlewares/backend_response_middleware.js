/******************************************************************************
 * Load data from the Phoenix backend app.
 ******************************************************************************/

import { FORMAT_STANCES } from "../constants/action_types";

export const formatStancesResponse = (backendResponseData) => {

  console.log("the data", backendResponseData);

  return (
    backendResponseData.map( (stance) => {
      return (
        {
          stanceId: stance.id,
          stance: {
            id: stance.id,
            name: stance.name,
            description: stance.description
          }
        }
      );
    })
  );

};

/**
 * Format responses from the Phoenix API
 */
const backendResponseMiddleware = ({ dispatch }) => next => action => {

  if( [ FORMAT_STANCES ].indexOf(action.type) === -1 ) {
    next(action);
    return;
  }

  const { payload } = action;

  switch (action.type) {
    case FORMAT_STANCES:
      dispatch( { type: payload.nextAction, payload: { data: formatStancesResponse(payload.data) } } );
  };
};

export default backendResponseMiddleware;
