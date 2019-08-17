library reactor.wrappers.component;

import 'package:reactor/src/interop/component.dart';
import 'package:reactor/src/core/maps.dart';

class Component<P extends Props, S extends State> {
  ReactJsComponentInterop reactJsComponent;

  P get props => reactJsComponent.props;
  set props(_props) { reactJsComponent.props = _props; }

  S get state => reactJsComponent.state;
  set state(_state) { reactJsComponent.state = _state; }

  setState(dynamic partialOrFunction, [Function callback]) {
    reactJsComponent.setState(partialOrFunction, callback);
  }

  void constructor(){}

  S getDerivedStateFromError(error){}

  S getDerivedStateFromProps(P props, S state){}

  dynamic getSnapshotBeforeUpdate(P prevProps, S prevState){}

  bool shouldComponentUpdate(P nextProps, S nextState) => true;

  dynamic render() => throw UnimplementedError();

  void componentDidMount(){}

  void componentDidUpdate(P prevProps, S prevState, dynamic snapshot){}

  void componentWillUnmount(){}

  void componentDidCatch(error, info) {}
}
