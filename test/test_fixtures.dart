import 'package:reactor/reactor.dart';
import 'package:reactor/src/core/react/hooks/use_state.dart' as hooker;

part 'test_fixtures.reactor.g.dart';

Factory<UiProps> Test = _Test;

@ReactorComponent()
TestComponent(props) {
  var state = hooker.useState(1);
  return (Dom.button()
    ..onClick = (_) {
      state.set(++state.value);
    })('Counter: ' + state.value.toString());
}
