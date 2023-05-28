@JS()
library reactor.core.react.components.suspense;

import 'package:js/js.dart';
import 'package:reactor/reactor.dart';
import 'package:reactor/src/interop/react.dart' as reactjs;

extension SuspensePropsExtension on SuspenseProps {
  external dynamic /* ReactElement|String|List */ fallback;
}

@JS()
@anonymous
@staticInterop
class SuspenseProps extends Props {
  external factory SuspenseProps();
}

/// Suspense lets components “wait” for something before rendering.
///
/// Suspense is not currently supported but this is in place for the future
/// when it can handle more scenarios such as data fetching.
SuspenseProps Suspense([Map? backingMap]) {
  return SuspenseProps()
    ..$$component = reactjs.React.Suspense;
}
