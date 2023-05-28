@JS()
library playground;

import 'dart:html';
import 'dart:js_util';
import 'package:js/js.dart';
import 'package:reactor/reactor.dart';

// @JS()
// @anonymous
// @staticInterop
// abstract class Props {
//   external factory Props();
// }

// extension ReactProps on Props {

// }

@JS()
@anonymous
@staticInterop
class WhateverProps extends Props {
  external factory WhateverProps();
}

extension WhateverPropsExt on WhateverProps {
  /// Test
  external bool? testBool;

  @JS('jsName')
  external String? differentJsName;

  external Function someFun;
}


MyFunctionComponent([WhateverProps? props]) {
  window.console.log(props?.someFun());
  return (Dom.div()..id="whatever")('Whatever: ${props?.testBool}');
}


final Whatever = FC(MyFunctionComponent)(() => WhateverProps());

extension FC<T extends Props> on Function([T? props]) {
  T Function() call(T Function() propBuilder) {
    final component = allowInterop((props, [legacyContext]) => this(props));
    final displayName = this.toString().replaceAll("Closure '", "").replaceAll("'", "");
    setProperty(component, 'displayName', displayName);
    final props = propBuilder()..$$component = component;
    return () => props;
  }
}

main() {
  window.console.log((Whatever()..someFun = (() => 'poop')..differentJsName='test'..testBool = true)(Dom.div()()));
  var content = StrictMode()(
    //re(Whatever,(WhateverProps()..testBool = true))
    //(Whatever.r()..testBool = true)()//.build()

    (Whatever()..differentJsName = 'test'..testBool = true)()
  );

  final root = ReactDOM.createRoot(querySelector('#content'));
  root.render(content);
}
