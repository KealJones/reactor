import 'package:reactor/reactor.dart';
import 'package:reactor/src/interop/react.dart' as reactjs;

/// A common pattern in React is for a component to return multiple elements.
/// Fragments let you group a list of children without adding extra nodes
/// to the DOM.
Props Fragment([Map? backingMap]) {
  return Props()
    ..$$component = reactjs.React.Fragment;
}
