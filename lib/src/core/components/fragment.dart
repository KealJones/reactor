import 'package:reactor/reactor.dart';
import 'package:reactor/src/interop/react.dart' as reactjs;


// Component Instance
Props Fragment([Map backingMap]) {
  return Props()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = reactjs.React.Fragment;
}
