import 'package:reactor/reactor.dart';

// part 'test_fixtures.reactor.g.dart';

// Factory<Props> Test = _Test;

//@ReactorComponent()
TestComponent(props) {
  var state = useState(1);
  return (Dom.button()
    ..onClick = (_) {
      state.set(++state.value);
    })('Counter: ${state.value}');
}
