
import 'dart:html';
import 'dart:js_util' as js_util;
import 'package:reactor/src/interop/react.dart';

ReactElement createElement(component, props, children) {
  return js_util.callMethod(
    js_util.getProperty(window, 'React'),
    'createElement',
    [component, props, ...children],
  );
}
