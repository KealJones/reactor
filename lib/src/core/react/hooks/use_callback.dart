import 'dart:js';

import 'package:reactor/src/interop/react.dart' as interop;

/// Returns a memoized callback.
///
/// Pass an inline callback and an array of dependencies. 
/// [useCallback] will return a memoized version of the callback that only 
/// changes if one of the dependencies has changed. This is useful when passing
/// callbacks to optimized child components that rely on reference equality to
/// prevent unnecessary renders (e.g. shouldComponentUpdate).
Function() useCallback<T>(Function() callback, List dependencies) {
  return interop.React.useCallback(allowInterop(callback), dependencies);
}
