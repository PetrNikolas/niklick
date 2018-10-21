// Import React on Rails lib
import ReactOnRails from 'react-on-rails';

// Import components
import Home from '../containers/Home';

// This is how react_on_rails can see the components in the browser.
ReactOnRails.register({
  Home,
});
