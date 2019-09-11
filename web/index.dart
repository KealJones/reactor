import 'dart:html';
import 'dart:js_util' as js_util;

import 'package:reactor/reactor.dart';
import 'package:reactor/src/core/react/hooks/hooks.dart';
import 'package:reactor/test.dart';

import 'function.dart';
import 'hello.dart';
import 'simple.dart';
import 'tic_tac_toe.dart';

part 'index.reactor.g.dart';

@ReactorComponent()
TestComponent(UiProps props) {
  var state = useState(1);
  return (Dom.button()
    ..onClick = (_) {
      state.set(++state.value);
    })('Counter: ' + state.value.toString());
}

main() async {
  Map<String, String> sharedStyleMap = {
    'display': 'flex',
    'flexDirection': 'column',
    'textAlign': 'center',
    'alignItems': 'center',
    'justifyContent': 'center',
    'height': '50vh',
  };
  var content = React.Fragment()(
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
      ),
      Dom.hr()(),
      (Dom.div()..style = sharedStyleMap)(
        Game()(),
      ),
      HookTest()());

  ReactDOM.render(content, querySelector('#content'));
}
