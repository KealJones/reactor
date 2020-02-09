library deferred_component;

import 'package:reactor/reactor.dart';

part 'deferred_component.reactor.g.dart';

Factory<Props> DeferredC = _Deferred;

abstract class DeferredPropsInterface {
  bool testingProps;
}
class DeferredProps extends Props implements DeferredPropsInterface {}

@ReactorComponent()
class DeferredComponent extends Component<Props, State> {
  render() => Dom.div()(['i am deferred!', if (props.children != null) ...props.children]);
}

Factory<Props> component = DeferredC;
