import 'dart:html';
import 'dart:js_util' as js_util;
import 'package:reactor/reactor.dart';

part 'function.reactor.g.dart';

Factory<_FunctionalProps> Functional = _Functional;

@ReactorComponent()
FunctionalComponent(_FunctionalProps props, String placeholder, int myNum) {
  return Dom.div()(
    Dom.div()(
      (Dom.input()
        ..className = 'test'
        ..placeholder = '$placeholder' ?? "type something here"
        ..aria.readonly = false
        ..onChange = (event) {
          String value = js_util.getProperty(js_util.getProperty(event, 'currentTarget'), 'value');
          print(value);
        })(),
    ),
  );
}

Factory HookTest = _HookTest;

@ReactorComponent()
HookTestComponent() {
  var counter = React.useState(1);
  var toggle = React.useState(true);

  React.useEffect(() {
    js_util.setProperty(window.document, 'title', 'You clicked ${counter.value} times');
  });

  return (Dom.button()
    ..onClick = (_) {
      counter.set(++counter.value);
      toggle.set(!toggle.value);
    })('${counter.value} ${toggle.value}');
}
