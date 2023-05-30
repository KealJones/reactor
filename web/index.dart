@JS()
library web;

import 'dart:html';
import 'package:js/js.dart';
import 'package:reactor/reactor.dart';
import './playground/index.dart';

@JS()
@anonymous
@staticInterop
class WhateverProps extends Props {
  external factory WhateverProps();
}

extension WhateverPropsExt on WhateverProps {
  /// Test
  external bool? testBool;

  @JS('data-jsname')
  external String? dataJsName;

  external Function someFun;
}

final Whatever = (WhateverProps props) {
  return (Dom.div()..addAll((props..remove('testBool'))))(props.children);
}.toFactory(() => WhateverProps());


//final Whatever = (MyFunctionComponent..withName('Whatever')).withProps(() => WhateverProps());

main() {
  var content = StrictMode()(
    (Whatever()
      ..id = 'we'
      //..aria.label = 'aria!'
      ..dataJsName = 'test'
      ..testBool = true
    )(
      (Dom.div()
       // ..aria.label = 'aria!'
        ..hidden = false
      )(
        'Test',
        (Bar()..testBool = false)(),
      ),
    ),
  );

  final root = ReactDOM.createRoot(querySelector('#content'));
  root.render(content);
}
