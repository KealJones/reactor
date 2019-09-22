import 'package:reactor/reactor.dart';
import 'package:reactor/src/interop/react.dart' as reactjs;


class SuspensePropsInterface {
  dynamic /* ReactElement|String|List */ fallback;
}

class SuspenseProps extends Props implements SuspensePropsInterface {}
/// Suspense is not currently supported but this is in place for the future 
/// when it can handle more scenarios such as data fetching.
SuspenseProps Suspense([Map backingMap]) {
  return SuspenseProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = reactjs.React.Suspense;
}
