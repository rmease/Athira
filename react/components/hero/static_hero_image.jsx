import React from 'react';
import AboutImage from "./about_image.svg";

class StaticHeroImage extends React.Component {
  constructor() {
    super();
  }

  // TODO DEPRECATE
  setBackground(url) {
    if (url.length) {
      return { 'backgroundImage': `url(./about_image.svg)` }
    } else {
      return { 'backgroundImage': `linear-gradient(to right top, #7accca, #5ca5a4, #40807f)` }
    }
  }

  //special styling for Vision Obstacles Execution graphic
  render() {
    return (
      <section className="hero__container-image vision-obstacles-execution">
          <img src={AboutImage} alt="Athira About Image" />
      </section >
    )
  }
}

export default StaticHeroImage;
