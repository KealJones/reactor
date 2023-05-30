library reactor.core.maps.ui_maps;

import 'dart:html';
import 'dart:js_util';
import 'package:js/js.dart';

import 'package:reactor/src/interop/js.dart';

@JS()
@anonymous
@staticInterop

class UiMap {
  external factory UiMap();
}

extension UiMapBase on UiMap {
  toMap() {
    return dartify(this) as Map<dynamic, dynamic>;
  }
  // Private helpers with narrower typing than we want to expose, for use in other methods
  List<dynamic> get _keys => objectKeys(this);

  List<dynamic> get _values => getProperty(objectPrototype!,'values')(this);

  /// Adds all key/value pairs of the JS object [jsOther] to this map.
  ///
  /// If a key of [jsOther] is already in this map, its value is overwritten.
  ///
  /// The operation is equivalent to doing `this[key] = value` for each key and associated value in [jsOther].
  ///
  /// This is similar to [addAll], but for a JsMap instead of a JsBackedMap/Map.
  void addAllFromJs(dynamic jsOther) {
    JsObject.assign(this as JsMap, jsOther);
  }

  // ----------------------------------
  // MapBase implementations
  // ----------------------------------

  dynamic operator [](dynamic key) {
    return getProperty(this, key!);
  }

  void operator []=(dynamic key, dynamic value) {
    if (value is Function) {
      window.console.log('$key is a function');
      value = allowInterop(value);
    }
    setProperty((this), key, value);
  }

  Iterable<dynamic> get keys => _keys;

  dynamic remove(dynamic key) {
    final value = this[key];
    Reflect.deleteProperty(this as JsMap, key);
    return value as dynamic;
  }

  void clear() {
    for (var key in _keys) {
      Reflect.deleteProperty(this as JsMap, key);
    }
  }

  bool containsKey(Object? key) => hasProperty(this, key!);

  Iterable<dynamic> get values => _values;

  // todo figure out if this is faster than default implementation
  bool containsValue(Object? value) => _values.contains(value);


  void forEach(void action(dynamic key, dynamic value)) {
    for (dynamic key in keys) {
      action(key, this[key]);
    }
  }

  void addAll(dynamic other) {
    if (other is Map) {
      other.forEach((dynamic key, dynamic value) {
        this[key] = value;
      });
      return;
    } else if (other is UiMap) {
      other.forEach((key, value) {
        this[key] = value;
      });
      return;
    }
    return;
  }

  dynamic putIfAbsent(dynamic key, dynamic ifAbsent()) {
    if (containsKey(key)) {
      return this[key];
    }
    return this[key] = ifAbsent();
  }

  dynamic update(dynamic key, dynamic update(dynamic value), {dynamic Function()? ifAbsent}) {
    if (containsKey(key)) {
      return this[key] = update(this[key]);
    }
    if (ifAbsent != null) {
      return this[key] = ifAbsent();
    }
    throw ArgumentError.value(key, "key", "Key not in map.");
  }

  void updateAll(dynamic update(dynamic key, dynamic value)) {
    for (var key in keys) {
      this[key] = update(key, this[key]);
    }
  }

  Iterable<MapEntry<dynamic, dynamic>> get entries {
    return keys.map((dynamic key) => MapEntry<dynamic, dynamic>(key, this[key]));
  }

  Map<K2, V2> map<K2, V2>(MapEntry<K2, V2> transform(dynamic key, dynamic value)) {
    var result = <K2, V2>{};
    for (var key in keys) {
      var entry = transform(key, this[key]);
      result[entry.key] = entry.value;
    }
    return result;
  }

  void addEntries(Iterable<MapEntry<dynamic, dynamic>> newEntries) {
    for (var entry in newEntries) {
      this[entry.key] = entry.value;
    }
  }

  void removeWhere(bool test(dynamic key, dynamic value)) {
    var keysToRemove = <dynamic>[];
    for (var key in keys) {
      if (test(key, this[key])) keysToRemove.add(key);
    }
    for (var key in keysToRemove) {
      remove(key);
    }
  }

  int get length => keys.length;
  bool get isEmpty => keys.isEmpty;
  bool get isNotEmpty => keys.isNotEmpty;
}
