// Import React libs
import PropTypes from 'prop-types';
import React from 'react';

export default class serverFooter extends React.Component {
  render() {
    return (
      <footer className="server-footer-container row">
        <div className="server-logos-container">
          <p>COPYRIGHT @2018 PETR NIKOLAS</p>

          <div>
            <a href="https://www.instagram.com/petr.nikolas/" target="_blank"><img src={this.props.instagram} alt="logo" className="social-media-logos" /></a>
            <a href="https://twitter.com/PetrNikolas" target="_blank"><img src={this.props.twitter} alt="logo" className="social-media-logos" /></a>
            <a href="https://medium.com/@petr.nikolas" target="_blank"><img src={this.props.medium} alt="logo" className="social-media-logos" /></a>
          </div>

          <div className="made-in">
            <p>Made in Prague, Czech Republic.</p>
          </div>
        </div>

        <div className="server-links-container">
          <div className="server-link-column non-mobile">
            <a href="#">
              <p>Log In</p>
            </a>
            <a href="#">
              <p>Create an Account</p>
            </a>
            <a href="#">
              <p>My Profile</p>
            </a>
            <a href="#">
              <p>Sign Out</p>
            </a>
          </div>

          <div className="server-link-column">
            <a href="#">
                <p>About</p>
            </a>
            <a href="#">
                <p>Contact</p>
            </a>
            <a href="#">
                <p>Terms</p>
            </a>
            <a href="#">
                <p>Privacy</p>
            </a>
          </div>
        </div>
      </footer>
    )
  }
}