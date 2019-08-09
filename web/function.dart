import 'dart:js_util' as js_util;
import 'package:reactor/reactor.dart';

part 'function.reactor.g.dart';

@Factory()
var Functional = _Functional;

@Component()
ReactElement FunctionalComponent(props, String placeholder, int myNum) {
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
