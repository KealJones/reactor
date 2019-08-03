import 'dart:html';

import 'package:reactor/reactor.dart';

import 'function.dart';
import 'hello.dart';
import 'goodbye.dart';

main() {
  var content = Dom.div()(
    (Functional()..placeholder = 'test'..id = 'omg')(),
    (Hello()
      ..isThisDefault = false
      ..key = 'hello'
    )(
      (Dom.span()..key='test')('Test'),
    ),
    (Hello()
      ..isThisDefault = false
      ..key = 'hello2'
    )(
      (Dom.span()..key='test')('Test'),
    ),
  );

  ReactDOM.render(
    content,
    querySelector('#content')
  );
}
