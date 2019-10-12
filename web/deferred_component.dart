library deferred_component;

import 'package:reactor/reactor.dart';

part 'deferred_component.reactor.g.dart';

Factory<Props> DeferredC = _Deferred;

@ReactorComponent()
DeferredComponent(Props props) {
  return Dom.div()('i am deferred!');
}

Factory<Props> component = DeferredC;