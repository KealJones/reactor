import 'package:reactor/src/interop/react.dart' as interop;

/// [useImperativeHandle] customizes the instance value that is exposed to parent
/// components when using ref. As always, imperative code using refs should be
/// avoided in most cases. useImperativeHandle should be used with forwardRef.
void useImperativeHandle<T, R extends T>(interop.RefObject<T> ref, R Function() init, [List<dynamic> dependencies]) {
  interop.React.useImperativeHandle(ref, init, dependencies);
}
