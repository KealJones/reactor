@JS()
library web.playground;

import 'dart:html';
import 'dart:js_util';
import 'package:js/js.dart';
import 'package:reactor/reactor.dart';
import 'package:reactor/src/interop/interop.dart';

@JS()
@anonymous
@staticInterop
class BarProps extends Props {
  external factory BarProps();
}

extension BarPropsExt on BarProps {
  /// Test
  external bool? testBool;

  @JS('jsName')
  external String? differentJsName;

  external Function? someFun;
}

final Bar = (BarProps props) {
  return 'Bar: ${props.testBool}';
}.toFactory(() => BarProps());
