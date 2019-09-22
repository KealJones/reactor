import 'package:reactor/reactor.dart';
import 'hello.dart';

part 'goodbye.reactor.g.dart';

Factory<GoodbyeProps> Goodbye = _Goodbye;

class GoodbyePropsInterface {
  String test;
}

class GoodbyeProps extends Props implements GoodbyePropsInterface, HelloPropsInterface {}

class GoodbyeStateInterface {
  bool matchesString;
}

class GoodbyeState extends State implements GoodbyeStateInterface, HelloStateInterface {}

@ReactorComponent()
class GoodbyeComponent extends Component<GoodbyeProps, GoodbyeState> {
  @override
  render() {
    return (Dom.div()..id = props.dom.id)(
        '${this.state?.matchesString ?? false ? "Input is equal too \"omg\"" : "Input is not equal too \"omg\""}.');
  }

  @override
  getDerivedStateFromProps(GoodbyeProps _props, GoodbyeState state) {
    if (_props.dom.value == 'omg') {
      return GoodbyeState()..matchesString = true;
    }
    return GoodbyeState()..matchesString = false;
  }
}
