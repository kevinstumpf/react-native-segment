# react-native-segment
Native Wrapper around Segment's SDK

This implementation automatically comes with Segment's Google Analytics client side integration.

## Usage

```js
var segment = require('react-native-segment');

var debug = true;
segment.setupWithConfiguration('YOUR WRITE KEY', debug);

segment.identify('myUserId', {firstName: 'name'});
segment.track('Purchased Item', {itemId: 123});
segment.screen('Viewed Login');
segment.alias('myNewUserId');
segment.reset();
```

## Installation

```sh
npm install --save react-native-segment
cd node_modules/react-native-segment
pod install
```

### Modifications to your React Native XCode Project

- Drag and Drop /node_modules/react-native-segment/RNSegment/RNSegment.xcodeproj into the Libraries folder of your project in XCode (as described [here](https://facebook.github.io/react-native/docs/linking-libraries-ios.html#content))
- Drag and Drop the RNSegment's libRNSegment.a from its Products folder into your project's target's "Linked Frameworks and Libraries" section (again, as described [here](https://facebook.github.io/react-native/docs/linking-libraries-ios.html#content))
- Similarly, Drag and Drop /node_modules/react-native-segment/Pods/Pods.xcodeproj into the Libraries folder of your project
- Drag and Drop the Pod's libAnalytics.a and libSegment-GoogleAnalytics.a into your project's target's "Linked Frameworks and Libraries" section
- Drag and Drop /Libraries/Pods.xcodeproj/Pods/GoogleAnalytics/Frameworks/libGoogleAnalytics.a into the root of your project
- Add the following path to your project's "Library Search Paths"
```sh
"$(SRCROOT)/../node_modules/react-native-segment/Pods/GoogleAnalytics/Libraries"
```
- Add the following Linked Frameworks and Libraries to your project: "CoreData.framework", "CFNetwork.framework", "libsqlite3.tbd", "libz.tbd"
