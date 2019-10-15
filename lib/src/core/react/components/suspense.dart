import 'package:reactor/reactor.dart';
import 'package:reactor/src/interop/react.dart' as reactjs;

part 'suspense.reactor.g.dart';

class SuspensePropsInterface {
  dynamic /* ReactElement|String|List */ fallback;
}

@ReactorProps()
class SuspenseProps extends Props implements SuspensePropsInterface {}

/// Suspense lets components “wait” for something before rendering.
///
/// Suspense is not currently supported but this is in place for the future
/// when it can handle more scenarios such as data fetching.
SuspenseProps Suspense([Map backingMap]) {
  return SuspenseProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = reactjs.React.Suspense;
}
