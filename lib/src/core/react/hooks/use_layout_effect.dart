import 'package:reactor/src/interop/react.dart' as interop;

/// The signature is identical to [useEffect], but it fires synchronously after
/// all DOM mutations. Use this to read layout from the DOM and synchronously
/// re-render. Updates scheduled inside [useLayoutEffect] will be flushed
/// synchronously, before the browser has a chance to paint.
///
/// Prefer the standard [useEffect] when possible to avoid blocking visual
/// updates.
void useLayoutEffect(void Function() init, [List<dynamic>? dependencies]) {
  return interop.React.useLayoutEffect(init, dependencies);
}
