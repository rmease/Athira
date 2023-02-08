import React from "react";
import * as Material from "react-icons/lib/md";
import { HashLink } from "react-router-hash-link";
import Fade from "react-reveal/Fade";

class ServicesIndexItem extends React.Component {
  parseAnchor() {
    return this.props.first
      ? "/services"
      : `/services#service-${this.props.service.id}`;
  }

  scrollWithOffset = (el) => {
    const HEADER_HEIGHT = 92;
    const OFFSET_BENEATH_HEADER = 30;
    const yCoordinate = el.getBoundingClientRect().top + window.pageYOffset;
    window.scrollTo({ top: yCoordinate - (HEADER_HEIGHT + OFFSET_BENEATH_HEADER), behavior: 'smooth' }); 
}

  render() {
    return (
      <Fade bottom duration={1500}>
        <HashLink smooth to={this.parseAnchor()} scroll={(el) => this.scrollWithOffset(el)}>
          <div className="services-index-item__container--home">
            <div className="services-index-item__icon-container--home">
              <img
                className="services-index-item__icon--home"
                src={this.props.service.icon_url}
              />
            </div>
            <h3 className="services-index-item__header-2--home">
              {this.props.service.name}
            </h3>
            <h3 className="services-index-item__header-3--home">
              {this.props.service.short_description}
            </h3>
          </div>
        </HashLink>
      </Fade>
    );
  }
}

export default ServicesIndexItem;
