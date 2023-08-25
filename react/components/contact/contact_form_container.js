import {
  connect
} from 'react-redux';
import _ from 'lodash';

import ContactForm from './contact_form';

import * as VisitorActions from '../../actions/visitor_actions';
import * as CompanyActions from '../../actions/company_actions';

const mapStateToProps = (state, ownProps) => ({
  errors: state.errors.visitors,
  visitors: _.values(state.visitors),
  company: _.values(state.companies)[0]
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  requestToCreateVisitor: (formData) => dispatch(VisitorActions.requestToCreateVisitor(formData)),
  clearVisitorErrors: () => dispatch(VisitorActions.clearVisitorErrors()),
  getAllCompanies: () => dispatch(CompanyActions.getAllCompanies())
});

export default connect(mapStateToProps, mapDispatchToProps)(ContactForm);
