import { FETCH_STANCES, FORMAT_STANCES } from '../constants/action_types';
import { API_ENDPOINT_STANCES } from '../constants/api_endpoints';

const fetchStances = () => ({
  type: FETCH_STANCES,
  payload: {
    url: API_ENDPOINT_STANCES,
    success: FORMAT_STANCES
  }
});

export default fetchStances;
