import {
    combineReducers
} from 'redux';

import servicesReducer from './services_reducer';
import reviewsReducer from './reviews_reducer';
import companiesReducer from './companies_reducer';
import leadersReducer from './leaders_reducer';
import errorsReducer from './errors_reducer';
import imageCarouselsReducer from './image_carousels_reducer';
import visitorsReducer from './visitors_reducer';
import termsReducer from './terms_reducer';

export default combineReducers({
    services: servicesReducer,
    reviews: reviewsReducer,
    leaders: leadersReducer,
    companies: companiesReducer,
    imageCarousels: imageCarouselsReducer,
    visitors: visitorsReducer,
    terms: termsReducer,
    errors: errorsReducer
});