import 'dart:html';

import 'package:meta/meta.dart';
import 'package:reactor/reactor.dart';

import 'goodbye.dart';

part 'hello.reactor.g.dart';

class ExampleDartValue {
  Duration dur;
  ExampleDartValue({this.dur = const Duration(seconds: 2)});
}

@Factory()
var Hello = _Hello;

class HelloPropsInterface {
  /// An example dart value
  ExampleDartValue dartVal;

  /// A random prop default :P
  @required
  bool isThisDefault;
}

class HelloProps extends UiProps implements HelloPropsInterface {}

class HelloStateInterface {
  String customHelloText;
}
class HelloState extends UiState implements HelloStateInterface {}

@Component()
class HelloComponent extends UiComponent<HelloProps, HelloState> {
  InputElement inputRef = InputElement();

  @override
  render() {
    return Dom.div()(
      Dom.div()(
        (Dom.input()
          ..className = 'test'
          ..ref = (ref){ inputRef = ref; }
          ..dom.placeholder = "type something here"
          ..aria.readonly = false
          ..onChange = (_){
            String value = inputRef.value;
            this.setState(HelloState()..customHelloText = value);
          }
        )(),
      ),
      Dom.span()('${this.state.customHelloText?.isNotEmpty ?? false ? this.state.customHelloText + ' ' : 'Hello '}'),
      Dom.br()(),
      Dom.div()(
        (Goodbye()
          ..dom.id = 'goodbye'
        )(
          Dom.div()('Test')
        ),
      )
    );
  }

  @override
  componentDidMount() {
    print('componentDidMount was called...');
  }

  @override
  void componentDidUpdate(prevProps, prevState, snapshot) {
    print('componentDidUpdate');
  }
}