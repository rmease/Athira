import React from 'react';
import * as Material from 'react-icons/lib/md';

class ServicesIndexItem extends React.Component {

    render() {
        return (
            <div className="services-index-item__container">
                <div className="services-index-item__container--header">
                    <Material.MdRemoveCircle className="services-index-item__icon" />
                    <h3 className="services-index-item__header-3--name">{this.props.service.name}</h3>
                </div>
                <h3 className="services-index-item__header-3--description">{this.props.service.long_description}</h3>
            </div>
        );
    }
}

export default ServicesIndexItem;