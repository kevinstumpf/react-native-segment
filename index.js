var { NativeModules, Platform } = require('react-native');

var rnSegment = Platform.OS === 'ios' ? NativeModules.RNSegment : null;

class Segment {
  setupWithConfiguration = (writeKey, debug = false) => {
    if(!rnSegment) {
      return;
    }

    rnSegment.setupWithConfiguration(writeKey, debug);
  };

  identify = (userId, traits = {}, options = {}) => {
    if(!rnSegment) {
      return;
    }

    rnSegment.identify(userId, traits, options);
  };

  track = (event, properties = {}, options = {}) => {
    if(!rnSegment) {
      return;
    }

    rnSegment.track(event, properties, options);
  };

  screen = (event, properties = {}, options = {}) => {
    if(!rnSegment) {
      return;
    }

    rnSegment.screen(event, properties, options);
  };

  alias = (newid, options = {}) => {
    if(!rnSegment) {
      return;
    }

    rnSegment.alias(newId, options);
  };

  reset = () => {
    if(!rnSegment) {
      return;
    }
    
    rnSegment.reset();
  };
}

export default new Segment();