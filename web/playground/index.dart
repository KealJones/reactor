@JS()
library web.playground;

import 'package:js/js.dart';
import 'package:reactor/reactor.dart';

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
