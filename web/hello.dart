import 'dart:html';

import 'package:meta/meta.dart';
import 'package:reactor/reactor.dart';

import 'goodbye.dart';

part 'hello.reactor.g.dart';

Factory<Props> Test = _Test;

@ReactorComponent()
TestComponent(Props props) {
  var state = useState(1);
  return (Dom.button()
    ..onClick = (_) {
      state.set(++state.value);
    })('Counter: ' + state.value.toString());
}

class ExampleDartValue {
  Duration dur;
  ExampleDartValue({this.dur = const Duration(seconds: 2)});
}

Factory<HelloProps> Hello = _Hello;

class HelloPropsInterface {
  /// An example dart value
  ExampleDartValue dartVal;

  /// A random prop default :P
  @required
  bool isThisDefault;
}

class HelloProps extends Props implements HelloPropsInterface {}

class HelloStateInterface {
  String usersName;
}

class HelloState extends State implements HelloStateInterface {}

@ReactorComponent()
class HelloComponent extends Component<HelloProps, HelloState> {
  InputElement inputRef = InputElement();

  @override
  get defaultProps => HelloProps()..isThisDefault = true;

  @override
  render() {
    var tempProps = HelloProps().from(props)..remove('dartVal')..remove('isThisDefault')..remove('children');
    return Dom.div()(
        Dom.div()(
          (Dom.input()
            ..addAll(tempProps)
            ..className = 'test'
            ..ref = (ref) {
              inputRef = ref;
            }
            ..placeholder = "Type your name here!"
            ..aria.readonly = true
            ..onChange = (_) {
              String value = inputRef.value;
              this.setState(HelloState()..usersName = value);
            })(),
        ),
        Dom.span()('Hello${this.state.usersName?.isNotEmpty ?? false ? ', ' + this.state.usersName + '!' : ''}'),
        Dom.br()(),
        Dom.div()(
          (Goodbye()
            ..dom.id = 'goodbye'
            ..dom.value = state.usersName)(Dom.div()('Test')),
        ));
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
