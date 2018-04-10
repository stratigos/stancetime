import { combineReducers } from 'redux';

import stancesReducer from './stances_reducer';
import backendLoadingReducer from './backend_loading_reducer';

const AppReducer = combineReducers({
  stances: stancesReducer,
  loading: backendLoadingReducer
});

export default AppReducer;
