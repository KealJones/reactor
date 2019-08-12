import 'dart:html';

import 'package:reactor/reactor.dart';

import 'function.dart';
import 'hello.dart';
import 'simple.dart';
import 'tick_tack_toe.dart';

main() {
  var content = Dom.div()(
    (Functional()..placeholder = 'test'..id = 'omg')(),
    (Hello()
      ..aria.required = true
      ..isThisDefault = false
      ..key = 'hello'
    )(
      (Dom.span()..key='test')('Test'),
    ),
    Simple()(),
    Game()(),
  );

  ReactDOM.render(
    content,
    querySelector('#content')
  );
}
