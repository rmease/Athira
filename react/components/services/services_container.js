import {
    connect
} from 'react-redux';
import _ from 'lodash';

import ServicesIndex from './services_index';

import * as ServiceActions from '../../actions/service_actions';
import * as ImageCarouselActions from '../../actions/image_carousel_actions';
import * as CompanyActions from '../../actions/company_actions';

const mapStateToProps = (state, ownProps) => ({
    services: _.values(state.services),
    company: _.values(state.companies)[0]
});

const mapDispatchToProps = (dispatch, ownProps) => ({
    getAllServices: () => dispatch(ServiceActions.getAllServices()),
    getAllCompanies: () => dispatch(CompanyActions.getAllCompanies())
});

export default connect(mapStateToProps, mapDispatchToProps)(ServicesIndex);