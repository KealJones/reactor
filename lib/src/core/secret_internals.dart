@experimental
library reactor.core.secret_internals;

import 'dart:html' as html;
import 'dart:js_util' as js_util;
import 'dart:js' as js;

import 'package:meta/meta.dart';
import 'package:reactor/src/interop/component.dart';
import 'package:reactor/src/interop/js.dart';

/// Seriously, NO.
///
/// This will change whenever we want so dont use it cause we will break
/// this whenever we want.
// ignore: camel_case_types
class REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED {
  get react => js_util.getProperty('React', html.window);
  get reactDom => js_util.getProperty('ReactDOM', html.window);
  static JsComponentBuilder({displayName, constructor}) =>
      ReactJsComponentInterop(displayName: displayName, constructor: constructor);

  static get(String property, [dynamic object]) => js_util.getProperty(object ?? html.window, property);

  /// Shortcut method for using getProperty from [window].
  /// Will recurse through use of `.` wrapping each in a getProperty.
  /// Returns `null` if one of the gets does not exist.
  /// example usage: `JsUtils.get('testing.one[0].two["three"][1]');`
  static getDeep(String path) {
    var result = html.window;
    String cleanedPath = path;
    List<String> route;
    if (!path.contains('.') && !path.contains('[')) {
      return js_util.getProperty(result, path);
    }
    if (path.contains('[')) {
      cleanedPath = path.replaceAll('[', '.').replaceAll(RegExp('[\\\"\\]\\\']'), '');
    }
    if (path.contains('.')) {
      route = cleanedPath.split('.');
    } else {
      route = [path];
    }
    route.forEach((path) {
      if (result == null) return null;
      result = js_util.getProperty(result, path);
    });
    return result;
  }

  static set(dynamic object, String property, dynamic value) => js_util.setProperty(object, property, value);

  static setProto(dynamic object, String property, dynamic value) =>
      js_util.setProperty(js_util.getProperty(object, 'prototype'), property, value);

  static call(dynamic object, String methodName, List<dynamic> args) => js_util.callMethod(object, methodName, args);

  static define(dynamic object, String property, dynamic value) => JsObject.defineProperty(
      object, property, value is DefinePropertyValue ? value : DefinePropertyValue(value: value));

  static allowInterop(Function v) => js.allowInterop(v);
}
