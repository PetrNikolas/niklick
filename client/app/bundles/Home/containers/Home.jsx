// Import React libs
import PropTypes from 'prop-types';
import React from 'react';

// Import components
import Content from '../components/Content'

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
      <Content instagram={this.props.instagram} twitter={this.props.twitter} medium={this.props.medium} />
    );
  }
}
