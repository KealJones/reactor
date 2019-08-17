import 'dart:html';

import 'package:reactor/reactor.dart';

import 'function.dart';
import 'hello.dart';
import 'simple.dart';
import 'tic_tac_toe.dart';

main() {
  Map<String, String> sharedStyleMap = {
    'display': 'flex',
    'flexDirection': 'column',
    'textAlign': 'center',
    'alignItems': 'center',
    'justifyContent': 'center',
    'height': '50vh',
  };
  var content = Dom.div()(
    (Dom.div()..hidden = true..aria.hidden = true..style = sharedStyleMap)(
      (Hello()
        ..dartVal = ExampleDartValue(dur: Duration(seconds: 10))
        ..dom.hidden = true
        ..aria.hidden = true
        ..isThisDefault = false
        ..key = 'hello'
      )(
        (Dom.span()..key='test')('Test'),
      ),
      Simple()(),
      (Functional()..placeholder = 'I am a functional component'..id = 'omg')(),
    ),
    Dom.hr()(),
    (Dom.div()..style = sharedStyleMap)(
      Game()(),
    )
  );

  ReactDOM.render(
    content,
    querySelector('#content')
  );
}
