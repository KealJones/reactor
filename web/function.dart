import 'dart:html';
import 'dart:js_util' as js_util;
import 'package:reactor/reactor.dart';

import 'context.dart';

part 'function.reactor.g.dart';

Factory<_FunctionalProps> Functional = _Functional;

@ReactorComponent()
FunctionalComponent(_FunctionalProps props, String placeholder, int myNum) {
  var value = useContext(SomeContext);
  return [
    'Current Context Value: $value',
    (Dom.input()
      ..className = 'test $value'
      ..placeholder = '$placeholder' ?? "type something here"
      ..aria.readonly = false
      ..onChange = (event) {
        String value = js_util.getProperty(js_util.getProperty(event, 'currentTarget'), 'value');
        print(value);
      })()
  ];
}

Factory<Functional2Props> Functional2 = _Functional2;

class Functional2PropsInterface {
  String test;
  String placeholder;
  int myNum;
}

class Functional2Props extends Props implements Functional2PropsInterface {}

@ReactorComponent()
Functional2Component(Functional2Props props) {
  var value = useContext(SomeContext);
  return [
    'Current Context Value: $value',
    (Dom.input()
      ..className = 'test $value'
      ..placeholder = '${props.placeholder}' ?? "type something here"
      ..aria.readonly = false
      ..onChange = (event) {
        String value = js_util.getProperty(js_util.getProperty(event, 'currentTarget'), 'value');
        print(value);
      })()
  ];
}

Factory HookTest = _HookTest;

@ReactorComponent()
HookTestComponent() {
  var counter = useState(1);
  var toggle = useState(true);

  useEffect(() {
    js_util.setProperty(window.document, 'title', 'You clicked ${counter.value} times');
  });

  return (Dom.button()
    ..onClick = (_) {
      counter.set(++counter.value);
      toggle.set(!toggle.value);
    })('${counter.value} ${toggle.value}');
}
