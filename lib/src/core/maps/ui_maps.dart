library reactor.core.maps.ui_maps;

import 'dart:collection';
import 'dart:js_util';
import 'package:js/js.dart';

import 'package:reactor/src/core/constants.dart';
import 'package:reactor/src/core/react.dart';
import 'package:reactor/src/interop/js.dart';
import 'package:reactor/src/interop/js_backed_map.dart';

@JS()
@anonymous
@staticInterop
class UiMap {
  external factory UiMap();
}

extension UiMapBase on UiMap {
  // Private helpers with narrower typing than we want to expose, for use in other methods
  List<dynamic> get _keys => JsObject.keys(this as JsMap);

  List<dynamic> get _values => JsObject.values(this as JsMap);

  /// Adds all key/value pairs of the JS object [jsOther] to this map.
  ///
  /// If a key of [jsOther] is already in this map, its value is overwritten.
  ///
  /// The operation is equivalent to doing `this[key] = value` for each key and associated value in [jsOther].
  ///
  /// This is similar to [addAll], but for a JsMap instead of a JsBackedMap/Map.
  void addAllFromJs(JsMap jsOther) {
    JsObject.assign(this as JsMap, jsOther);
  }

  // ----------------------------------
  // MapBase implementations
  // ----------------------------------

  dynamic operator [](dynamic key) {
    return getProperty(this as JsMap, key!);
  }

  void operator []=(dynamic key, dynamic value) {
    setProperty((this as JsMap), key, value);
  }

  Iterable<dynamic> get keys => _keys;

  dynamic remove(dynamic key) {
    final value = this[key];
    Reflect.deleteProperty((this as JsMap), key);
    return value as dynamic;
  }

  void clear() {
    for (var key in _keys) {
      Reflect.deleteProperty((this as JsMap), key);
    }
  }

  // ----------------------------------
  // Optimized MapBase overrides
  // ----------------------------------

  void addAll(Map other) {
    if (other is JsBackedMap) {
      // Object.assign is more efficient than iterating through and setting properties in Dart.
      addAllFromJs(other.jsObject);
    } else {
      addAllFromJs(jsify(other.cast<dynamic, dynamic>()));
    }
  }

  bool containsKey(Object? key) => hasProperty((this as JsMap), key!);

  Iterable<dynamic> get values => _values;

  // todo figure out if this is faster than default implementation
  bool containsValue(Object? value) => _values.contains(value);
}
