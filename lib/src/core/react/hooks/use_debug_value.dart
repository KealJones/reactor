import 'package:reactor/src/interop/react.dart' as interop;

/// [useDebugValue] can be used to display a label for custom hooks in
/// React DevTools.
void useDebugValue<T>(T value, [dynamic Function(T value) format]) {
  return interop.React.useDebugValue(value, format);
}
