import 'package:reactor/reactor.dart';
import 'package:reactor/src/interop/react.dart' as reactjs;

/// A common pattern in React is for a component to return multiple elements. 
/// Fragments let you group a list of children without adding extra nodes 
/// to the DOM.
NoProps Fragment([Map backingMap]) {
  return NoProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = reactjs.React.Fragment;
}
