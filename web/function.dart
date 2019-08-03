import 'dart:js_util' as js_util;
import 'package:reactor/reactor.dart';

part 'function.reactor.g.dart';

@Factory()
var Functional = _Functional;

class FunctionalPropsInterface {
  String placeholder;
}

class FunctionalProps extends UiProps implements FunctionalPropsInterface {}

@Component()
ReactElement FunctionalComponent(FunctionalProps props) {
    return Dom.div()(
      Dom.div()(
        (Dom.input()
          ..className = 'test'
          ..placeholder = '${props.placeholder}' ?? "type something here"
          ..aria.readonly = false
          ..onChange = (event){
            String value = js_util.getProperty(js_util.getProperty(event, 'currentTarget'), 'value');
            print(value);
          }
        )(),
      ),
    );
}
