import 'dart:js';

import 'package:reactor/src/interop/react.dart';

void useEffect(void Function() sideEffect) {
  React.useEffect(allowInterop(sideEffect));
}
