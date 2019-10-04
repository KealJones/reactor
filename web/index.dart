import 'dart:html';

import 'package:reactor/reactor.dart';

import 'app_provider.dart';
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
  var content = StrictMode()(
    AppProvider()(
      Fragment()(
        (Dom.div()..style = sharedStyleMap)(
          (Hello()
            ..dartVal = ExampleDartValue(dur: Duration(seconds: 10))
            ..aria.autocomplete = false
            ..isThisDefault = false
            ..key = 'hello')(
            (Dom.span()..key = 'test')('Test'),
          ),
          Simple()(),
          (Functional()
            ..placeholder = 'I am a functional component'
            ..id = 'omg')(),
          (Functional2()
            ..placeholder = 'I am a functional2 component'
            ..id = 'test2')(),
        ),
        Dom.hr()(),
        (Dom.div()..style = sharedStyleMap)(
          Game()(),
        ),
        HookTest()(),
      ),
    ),
  );

  ReactDOM.render(content, querySelector('#content'));
}
