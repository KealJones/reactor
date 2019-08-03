@JS()
library reactor.interop.utils;

import 'dart:html' as html;
import 'dart:js';
import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:reactor/src/core.dart';
import 'package:reactor/src/interop/js.dart';

import './js.dart' show DefinePropertyValue, ReactElement, Window2ArgsFunction, WindowObject;

class ReactorJsUtils {
  static setInteropComponentName(interopComponent, String name){
    WindowObject.defineProperty(interopComponent,'name', new DefinePropertyValue(value: '$name', enumerable: false));
  }
}

class ReactorWindow {
  /// Returns [window].
  static get window => html.window;

  /// Returns [window.Object].
  static get object => ReactorWindow.get('Object');

  /// Returns [ReactorObject] wrapper for [window.Object] with helper methods.
  /// use [ReactorWindow.object] to access [window.Object] directly.
  static ReactorObject get Object => ReactorObject();

  /// Shortcut method for using getProperty from [window].
  /// Will recurse through use of `.` wrapping each in a getProperty.
  /// Returns `null` if one of the gets does not exist.
  /// example usage: `ReactorWindow.get('testing.one[0].two["three"][1]');`
  static get(String v) {
    var result = window;
    String cleanedPath = v;
    List<String> route;
    if (v.contains('[')){
      cleanedPath = v.replaceAll('[', '.').replaceAll(RegExp('[\\\"\\]\\\']'), '');
    }
    if (v.contains('.') ) {
      route = cleanedPath.split('.');
    } else {
      route = [v];
    }
    route.forEach((v){
      if (result == null) return null;
      result = js_util.getProperty(result, v);
    });
    return result;
  }
}

class ReactorObject {
  var jsObject = ReactorWindow.window;
  ReactorObject([this.jsObject]){
    if (this.jsObject is String){
      this.jsObject = ReactorWindow.get(this.jsObject);
    }
    this.jsObject ??= ReactorWindow.object;
  }

  static get object => ReactorWindow.object;

  get proto => js_util.getProperty(this.jsObject, 'prototype');

  create(o) => js_util.callMethod(this.jsObject, 'create', [o]);

  assign(target, source) => js_util.callMethod(this.jsObject, 'assign', [target, source]);

  void set(property, value) {
    js_util.setProperty(this.jsObject, property, value);
  }

  void define(property, DefinePropertyValue attributes) {
    js_util.callMethod(ReactorObject.object, 'defineProperty', [this.jsObject, property, attributes]);
  }

  call(String methodName, List<dynamic> args) {
    return js_util.callMethod(this.jsObject, methodName, args);
  }

  get(String v) {
    String cleanedPath = v;
    if (v.contains('.') || v.contains('[')){
      cleanedPath = v.replaceAll('[', '.').replaceAll(RegExp('[\\\"\\]\\\']'), '');
    }
    List<String> route = cleanedPath.split('.');
    var result = this.jsObject;
    route.forEach((v){
      if (result == null) return null;
      result = js_util.getProperty(result, v);
    });
    return result;
  }
}


class ReactComponentBuilder {
  final String displayName;
  ReactorObject roWrappedClass;

  dynamic reactClass;
  ReactComponent reactComponentInstance;

  getReactComponentThis(dynamic self){
    this.reactComponentInstance = self;
  }

  ReactComponentBuilder({this.displayName}) {
    this.reactClass = Window1ArgsFunction('getReactComponentThis', '''
      class $displayName extends React.Component {
        constructor(props, context, updater) {
          super(props, context, updater);
          this.state = {};
          getReactComponentThis(this);
        }
      }
      return $displayName;
      ''')(allowInterop(getReactComponentThis));

    this.roWrappedClass = ReactorObject(reactClass);
  }

  dynamic get type => reactComponentInstance.type;

  get props => reactComponentInstance.props;
  set props(_props) => reactComponentInstance.props = _props;

  get state => reactComponentInstance.state;
  set state(_state) => reactComponentInstance.state = _state;

  void setState(partial, [Function callback]) {
    if (callback != null){
      reactComponentInstance.setState(partial, allowInterop(callback));
    } else {
      reactComponentInstance.setState(partial);
    }
  }

  set displayName(String v) {
    roWrappedClass.define('displayName', DefinePropertyValue(value: v, configurable: true));
  }

  set getDerivedStateFromError(Function(dynamic error) v) {
    roWrappedClass.set('getDerivedStateFromError', allowInterop(v));
  }

  set getDerivedStateFromProps(Function(dynamic props, dynamic state) v) {
    roWrappedClass.set('getDerivedStateFromProps', allowInterop(v));
  }

  set getSnapshotBeforeUpdate(Function(dynamic prevProps, dynamic prevState) v) {
    roWrappedClass.set('getSnapshotBeforeUpdate', allowInterop(v));
  }

  set shouldComponentUpdate(bool Function(dynamic nextProps, dynamic nextState, dynamic nextContext) v) {
    js_util.setProperty(roWrappedClass.proto, 'shouldComponentUpdate', allowInterop(v));
  }

  set render(dynamic Function() v) {
    js_util.setProperty(roWrappedClass.proto, 'render', allowInterop(v));
  }

  set componentDidMount(void Function() v) {
    js_util.setProperty(roWrappedClass.proto, 'componentDidMount', allowInterop(v));
  }

  set componentDidUpdate(void Function(dynamic prevProps, dynamic prevState, dynamic snapshot) v) {
    js_util.setProperty(roWrappedClass.proto, 'componentDidUpdate', allowInterop(v));
  }

  set componentWillUnmount(void Function() v) {
    js_util.setProperty(roWrappedClass.proto, 'componentWillUnmount', allowInterop(v));
  }

  set componentDidCatch(void Function(dynamic error, dynamic info) v) {
    js_util.setProperty(roWrappedClass.proto, 'componentDidCatch', allowInterop(v));
  }
}
