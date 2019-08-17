@JS()
library reactor.interop.js_backed_map;

import 'dart:collection';
import 'dart:core';
import 'dart:js_util' as js_util;

import 'package:js/js.dart';
import 'package:reactor/src/interop/js.dart';

class JsBackedMap<K, V> extends MapBase<K, V> implements Map<K, V> {
  final jsObject;

  JsBackedMap() : jsObject = new JsMap();

  JsBackedMap.backedBy(this.jsObject);

  factory JsBackedMap.from(Map other) => new JsBackedMap()..addAll(other);

  factory JsBackedMap.fromJs(JsMap other) {
    // todo optimize by eliminating JsBackedMap instance creation
    return new JsBackedMap.from(new JsBackedMap.backedBy(other));
  }

  static Map<K, V> copyToDart<K, V>(JsMap jsObject) {
    return new Map<K, V>.from(new JsBackedMap.backedBy(jsObject));
  }

  // these checks moved to asserts for better inlining...
  // todo see if we can keep toString() behavior of keys without asserts without breaking map behavior? probably not
  bool _isValidKey(Object key) => key == null || key is String;

  // ----------------------------------
  // Core overrides
  // ----------------------------------

  @override
  V operator [](Object key) {
    return js_util.getProperty(jsObject, key);
  }

  @override
  void operator []=(K key, V value) {
    js_util.setProperty(jsObject, key, value);
  }

  // todo this cast seems to work in Dart 1 without much overhead in dart2js, but may break in DDC/Dartium and may also break reified types
  @override
  Iterable<K> get keys => JsObject.keys(jsObject) as List<K>;

  @override
  V remove(Object key) {
    final value = this[key];
    Reflect.deleteProperty(jsObject, key);
    return value;
  }

  @override
  void clear() {
    for (var key in keys) {
      Reflect.deleteProperty(jsObject, key);
    }
  }

  // ----------------------------------
  // Optimized overrides
  // ----------------------------------

  @override
  void addAll(Map<K, V> other) {
    // Don't check against JsBackedMap<V> since it's less optimized in dart2js,
    // and we can assume that any JsBackedMap that is also a Map<String, V>
    // is also a JsBackedMap<V>. TODO validate in Dart 2 and create dart-lang/sdk bug for this
    if (other is JsBackedMap) {
      // This cast is necessary due to type inference not working
      // properly without the generic parameter, and has no
      // overhead in dart2js
      JsObject.assign(jsObject, (other as JsBackedMap).jsObject);
    } else {
      super.addAll(other);
    }
  }

  @override
  bool containsKey(Object key) {
    return js_util.hasProperty(jsObject, key);
  }

  // todo this cast seems to work in Dart 1 without much overhead in dart2js, but may break in DDC/Dartium and may also break reified types
  @override
  Iterable<V> get values => JsObject.values(jsObject) as List<V>;

// TODO not sure if overriding makes sense; check to see which is more optimal for smaller maps
//  @override
//  bool containsValue(Object value) => values.contains(value);

// overridden for to avoid cast in case the implementation of keys changes
//  @override
//  int get length => _Object.keys(jsObject).length;

  @override
  bool operator ==(other) => other is JsBackedMap && other.jsObject == jsObject;

  @override
  int get hashCode => jsObject.hashCode;
}


JsMap jsBackingMapOrJsCopy(Map other) {
  // todo is it faster to just always do .from?
  if (other is JsBackedMap) {
    return other.jsObject;
  } else {
    return new JsBackedMap.from(other).jsObject;
  }
}

T convertJsBackedMapTo<T>(JsMap other) {
  return (JsBackedMap.fromJs(other) as T);
}
