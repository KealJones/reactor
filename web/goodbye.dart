import 'package:reactor/reactor.dart';

part 'goodbye.reactor.g.dart';

@Factory()
var Goodbye = _Goodbye;

class GoodbyePropsInterface {
  String test;
}

class GoodbyeProps extends UiProps implements GoodbyePropsInterface {}

class GoodbyeStateInterface {
  bool matchesString;
}

class GoodbyeState extends UiState implements GoodbyeStateInterface {}

@Component()
class GoodbyeComponent extends UiComponent<GoodbyeProps, GoodbyeState> {
  @override
  render() {
    return (Dom.div()..id = props.dom.id)(
    '${this.state?.matchesString ?? false ? "does" : "does not"} match.'
    );
  }

  @override
  getDerivedStateFromProps(GoodbyeProps _props, GoodbyeState state) {
    if (_props.dom.value == 'omg') {
      return GoodbyeState()..matchesString = true;
    }
    return GoodbyeState()..matchesString = false;
  }
}
