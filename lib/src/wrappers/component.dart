library reactor.wrappers.component;

import 'package:reactor/reactor.dart';
import 'package:reactor/src/interop/interop.dart';
import 'package:reactor/src/wrappers/maps.dart';

class UiComponent<P extends UiProps, S extends UiState> {
  ReactComponentBuilder reactorComponent;

  P get props => reactorComponent.props;
  set props(_props) { reactorComponent.props = _props.$backingMap.jsObject; }

  S get state => reactorComponent.state;
  set state(_state) { reactorComponent.state = _state.$backingMap.jsObject; }

  setState(S partial, [Function callback]) {
    var jsState = partial.$backingMap.jsObject;
    reactorComponent.setState(jsState, callback);
  }

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
