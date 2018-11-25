// Import React libs
import PropTypes from 'prop-types';
import React from 'react';

// Import components
import Footer from './Footer';
import Header from './Header';

export default class Content extends React.Component {
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
              <p>
                React on Rails and Versioned API solution template for hipsters!
              </p>
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

        <Footer
          instagram={this.props.instagram}
          twitter={this.props.twitter}
          medium={this.props.medium}
        />
      </div>
    );
  }
}
