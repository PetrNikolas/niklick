import PropTypes from 'prop-types';
import React from 'react';

import Footer from './Footer'
import Header from './Header'

export default class Home extends React.Component {
  static propTypes = {
    // This is passed from the Rails view
    instagram: PropTypes.string.isRequired,
    twitter: PropTypes.string.isRequired,
    medium: PropTypes.string.isRequired
  };

  /**
   * @param props - Comes from your rails view.
   * @param _railsContext - Comes from React on Rails
   */
  constructor(props, _railsContext) {
    super(props);

    this.state = {
      instagram: this.props.instagram,
      twitter: this.props.twitter,
      medium: this.props.medium
    };
  }

  render() {
    return (
      <div className="landing-container">
        <div className="landing-dashboard">
          <Header />

          <div className="dashboard-container">
            <div className="dashboard-title">
              <h1>React on Rails and GraphQL</h1>
            </div>

            <div className="dashboard-text">
              <p>React on Rails and Versioned API solution template for hipsters!</p>
              <p>With GraphQL support - query, types, mutations, etc..</p>
              <p>And Versioned REST API.</p>
            </div>

            <div className="dashboard-button-container">
              <a href="https://github.com/PetrNikolas/niklick" target="_blank">
                <div className="dashboard-button">
                  <p>GET STARTED</p>
                </div>
              </a>
            </div>
          </div>
        </div>

        <Footer instagram={this.props.instagram} twitter={this.props.twitter} medium={this.props.medium} />
      </div>
    );
  }
}
