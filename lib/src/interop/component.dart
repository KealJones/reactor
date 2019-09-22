library reactor.interop.component;

import 'dart:js';

import 'package:reactor/src/interop/react.dart';
import 'package:reactor/src/interop/js.dart';
import 'package:reactor/src/core/secret_internals.dart';
import 'package:reactor/src/core/maps.dart';

class ReactComponentClassInterop {
  final String displayName;

  dynamic reactClass;
  ReactComponentClass reactComponentClassInstance;

  getReactComponentThis(dynamic self) {
    this.reactComponentClassInstance = self;
  }

  ReactComponentClassInterop({this.displayName, void Function() constructor}) {
    this.reactClass = Js2ArgFunction(
      'dartConstructor',
      'getReactComponentThis',
      '''
      class $displayName extends React.Component {
        constructor(props, context, updater) {
          super(props, context, updater);
          this.state = {};
          getReactComponentThis(this);
          dartConstructor();
        }
      }
      return $displayName;
      ''',
    )(
      allowInterop(constructor ?? () {}),
      allowInterop(getReactComponentThis),
    );
  }

  dynamic get type => reactComponentClassInstance.type;

  get props => reactComponentClassInstance.props;
  set props(_props) => reactComponentClassInstance.props = _props.$backingMap.jsObject;

  get state => reactComponentClassInstance.state;
  set state(_state) => reactComponentClassInstance.state = _state.$backingMap.jsObject;

  void setState(dynamic partialOrFunction, [Function callback]) {
    var _newState = partialOrFunction;
    if (partialOrFunction is UiMap) {
      _newState = partialOrFunction.$backingMap.jsObject;
    } else if (partialOrFunction is Function) {
      _newState = allowInterop(partialOrFunction);
    }

    if (callback != null) {
      reactComponentClassInstance.setState(_newState, allowInterop(callback));
    } else {
      reactComponentClassInstance.setState(_newState);
    }
  }

  set contextType(String v) {
    REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.define(
        reactClass, 'contextType', DefinePropertyValue(value: v, configurable: true));
  }

  set displayName(String v) {
    REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.define(
        reactClass, 'displayName', DefinePropertyValue(value: v, configurable: true));
  }

  set getDerivedStateFromError(Function(dynamic error) v) {
    REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.set(
        reactClass, 'getDerivedStateFromError', allowInterop(v));
  }

  set getDerivedStateFromProps(Function(dynamic props, dynamic state) v) {
    REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.set(
        reactClass, 'getDerivedStateFromProps', allowInterop(v));
  }

  set getSnapshotBeforeUpdate(Function(dynamic prevProps, dynamic prevState) v) {
    REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.set(
        reactClass, 'getSnapshotBeforeUpdate', allowInterop(v));
  }

  set shouldComponentUpdate(bool Function(dynamic nextProps, dynamic nextState, dynamic nextContext) v) {
    REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.setProto(
        reactClass, 'shouldComponentUpdate', allowInterop(v));
  }

  set render(dynamic Function() v) {
    REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.setProto(reactClass, 'render', allowInterop(v));
  }

  set componentDidMount(void Function() v) {
    REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.setProto(reactClass, 'componentDidMount', allowInterop(v));
  }

  set componentDidUpdate(void Function(dynamic prevProps, dynamic prevState, dynamic snapshot) v) {
    REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.setProto(
        reactClass, 'componentDidUpdate', allowInterop(v));
  }

  set componentWillUnmount(void Function() v) {
    REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.setProto(
        reactClass, 'componentWillUnmount', allowInterop(v));
  }

  set componentDidCatch(void Function(dynamic error, dynamic info) v) {
    REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.setProto(reactClass, 'componentDidCatch', allowInterop(v));
  }
}
