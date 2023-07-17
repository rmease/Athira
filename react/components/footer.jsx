import React from 'react';
import { Link } from 'react-router-dom';
import * as Typicons from 'react-icons/lib/ti';
//add for commit
class Footer extends React.Component {
    constructor() {
        super();
        this.state = {
            currentYear: undefined
        }

        this.defaultFacebookURL = "https://www.facebook.com"
        this.defaultLinkedInURL = "https://www.linkedin.com"
    }

    componentDidMount() {
        this.props.getAllCompanies();
        this.props.getAllTerms();
        this.setState({ currentYear: new Date() });
    }

    renderCopyright() {
        return (
            <p>{`© ${this.state.currentYear ? this.state.currentYear.getFullYear() : ""} Athira, LLC`}</p>
        )
    }

    renderTermsLink() {
        if (this.props.terms && this.props.terms.length) {
            const termTitle = this.props.terms[0].title;
            return (
                <Link to='/terms'>{termTitle}</Link>
            );
        }
    }

    renderFacebookIconIfCustomized() {
        if (this.props.company && (this.props.company.facebook_url != this.defaultFacebookURL)) {
            return (
                <a href={this.props.company.facebook_url} target="_blank"><Typicons.TiSocialFacebookCircular /></a>
            )
        }   
    }
    renderLinkedInIconIfCustomized() {
        if (this.props.company && (this.props.company.linkedin_url != this.defaultLinkedInURL)) {
            return (
                <a href={this.props.company.linkedin_url} target="_blank"><Typicons.TiSocialLinkedinCircular /></a>
            )
        }
    }

    render() {
        return (
            <footer>
                <section className="footer__legal">
                    { this.renderCopyright() }
                    { this.renderTermsLink() }
                </section>
                <section className="footer__social">
                    { this.renderFacebookIconIfCustomized() }
                    { this.renderLinkedInIconIfCustomized() }
                </section>
            </footer>
        )
    }
}

export default Footer;