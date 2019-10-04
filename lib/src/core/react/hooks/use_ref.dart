import 'dart:js';

import 'package:reactor/src/interop/react.dart' as interop;

/// [useRef] returns a mutable ref object whose .current property is initialized
/// to the passed argument (initialValue). The returned object will persist for
/// the full lifetime of the component.
interop.RefObject useRef<T>([T initalValue]) {
  return interop.React.useRef(initalValue);
}
