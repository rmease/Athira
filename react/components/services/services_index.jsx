import React from 'react';
import { withRouter } from 'react-router-dom';

import { ServicesIndexItemLeft, ServicesIndexItemRight, ServicesIndexItemMobile } from './services_index_item';
import Contact from '../contact/contact';

class ServicesIndex extends React.Component {
    constructor() {
        super();
    }

    componentWillMount() {
        if (!this.props.location.hash.length) {
            window.scroll(0, 0);
        }
    }

    componentDidMount() {
        this.props.getAllServices();
        this.props.getAllCompanies();
    }

    renderServices() {
        if (this.props.services && this.props.services.length) {
            if (window.innerWidth < 800) {
                return (
                    <React.Fragment>
                        {this.props.services.map(service => {
                            return <ServicesIndexItemMobile key={service.id} service={service} />
                        })}
                    </React.Fragment>
                )
            }
            return (
                <React.Fragment>
                    {this.props.services.map(service => {
                        if (service.id % 2 === 0) {
                            return <ServicesIndexItemLeft key={service.id} service={service} />
                        } else {
                            return <ServicesIndexItemRight key={service.id} service={service} />
                        }
                    })}
                </React.Fragment>
            )
        }
    }

    render() {
        return (
            <React.Fragment>
                <section className="main__meta-container">
                    <div className="services-index__container">
                        {this.renderServices()}
                    </div>
                    <Contact
                        email_address={this.props.company ? this.props.company.email_address : ''}
                        phone_number={this.props.company ? this.props.company.phone_number : ''}
                    />
                </section>
            </React.Fragment >
        )
    }
}

export default withRouter(ServicesIndex);
