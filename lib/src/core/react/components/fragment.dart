import 'package:reactor/reactor.dart';
import 'package:reactor/src/interop/react.dart' as reactjs;

// Component Instance
NoProps Fragment([Map backingMap]) {
  return NoProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = reactjs.React.Fragment;
}
