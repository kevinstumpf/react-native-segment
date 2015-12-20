var { NativeModules } = require('react-native');

var rnSegment = NativeModules.RNSegment;

class Segment {
  setupWithConfiguration = (writeKey, debug = false) => {
    rnSegment.setupWithConfiguration(writeKey, debug);
  };

  identify = (userId, traits = {}, options = {}) => {
    rnSegment.identify(userId, traits, options);
  };

  track = (event, properties = {}, options = {}) => {
    rnSegment.track(event, properties, options);
  };

  screen = (event, properties = {}, options = {}) => {
    rnSegment.screen(event, properties, options);
  };

  alias = (newid, options = {}) => {
    rnSegment.alias(newId, options);
  };

  reset = () => {
    rnSegment.reset();
  };
}

export default new Segment();