import 'dart:html';
import 'dart:js_util' as js_util;
import 'package:reactor/reactor.dart';

part 'function.reactor.g.dart';


var Functional = _Functional;

@ReactorComponent()
FunctionalComponent(props, String placeholder, int myNum) {
  return Dom.div()(
    Dom.div()(
      (Dom.input()
        ..className = 'test'
        ..placeholder = '$placeholder' ?? "type something here"
        ..aria.readonly = false
        ..onChange = (event){
          String value = js_util.getProperty(js_util.getProperty(event, 'currentTarget'), 'value');
          print(value);
        }
      )(),
    ),
  );
}

Factory<_HookTestProps> HookTest = _HookTest;

@ReactorComponent()
HookTestComponent(_HookTestProps props) {
  var state = React.useState(1);

  React.useEffect(() {
    js_util.setProperty(window.document, 'title', 'You clicked ${state.value} times');
  });

  return (Dom.button()..onClick = (_)=>state.set(++state.value))('${state.value}');
}