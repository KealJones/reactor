library reactor.core.component;

import 'package:reactor/src/interop/component.dart';
import 'package:reactor/src/core/maps.dart';

class Component<P extends Props, S extends State> {
  ReactComponentClassInterop reactComponentClass;

  set contextType(_contextType) => reactComponentClass.contextType = _contextType;

  P get props => reactComponentClass.props;
  set props(_props) => reactComponentClass.props = _props;

  S get state => reactComponentClass.state;
  set state(_state) => reactComponentClass.state = _state;

  setState(dynamic partialOrFunction, [Function callback]) {
    reactComponentClass.setState(partialOrFunction, callback);
  }

  void constructor() {}

  // ignore: missing_return
  S getDerivedStateFromError(error) {}

  // ignore: missing_return
  S getDerivedStateFromProps(P props, S state) {}

  dynamic getSnapshotBeforeUpdate(P prevProps, S prevState) {}

  bool shouldComponentUpdate(P nextProps, S nextState) => true;

  dynamic render() => throw UnimplementedError();

  void componentDidMount() {}

  void componentDidUpdate(P prevProps, S prevState, dynamic snapshot) {}

  void componentWillUnmount() {}

  void componentDidCatch(error, info) {}
}
