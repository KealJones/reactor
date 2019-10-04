import 'package:reactor/reactor.dart';
import 'package:reactor/src/interop/react.dart' as reactjs;

/// StrictMode is a tool for highlighting potential problems in an application.
/// Like Fragment, StrictMode does not render any visible UI. It activates
/// additional checks and warnings for its descendants.
NoProps StrictMode([Map backingMap]) {
  return NoProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = reactjs.React.StrictMode;
}
