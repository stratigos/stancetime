import { createStore, applyMiddleware } from "redux";

import AppReducer from "../reducers/AppReducer";
import backendApiMiddleware from "../middlewares/backend_api_middleware";
import backendResponseMiddleware from "../middlewares/backend_response_middleware";

const middleWares = [
  backendApiMiddleware,
  backendResponseMiddleware
];

const AppStore = createStore(
  AppReducer,
  applyMiddleware(...middleWares)
);

export default AppStore;
