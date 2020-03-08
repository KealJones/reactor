library reactor.core.maps.ui_maps;

import 'dart:collection';
import 'dart:js';
import 'dart:js_util';

import 'package:reactor/src/core/constants.dart';
import 'package:reactor/src/core/react.dart';
import 'package:reactor/src/interop/js.dart';
import 'package:reactor/src/interop/js_backed_map.dart';

class UiProps extends UiMap with UiComponentInterface {
  /// NO.
  dynamic $componentClass;

  /// Creates the ReactElement that will be returned from the component.
  ReactElement build(dynamic children) {
    return createElement(
      $componentClass,
      $backingMap.jsObject,
      children,
    );
  }

  @override
  noSuchMethod(Invocation i) {
    if (i.isMethod && i.memberName == #call) {
      return build(i.positionalArguments.takeWhile((child) => !identical(child, undefined)).toList());
    }
    return super.noSuchMethod(i);
  }
}

class UiMap extends MapBase with UiMapBase, UiMapViewMixin {
  UiMap([backingMap]) {
    $backingMap = backingMap ?? $backingMap;
  }

  final String keyPrefix = '';

  from(dynamic someMap) {
    if (someMap is JsMap) {
      $backingMap = JsBackedMap.backedBy(someMap ?? JsMap());
    } else if (someMap is Map) {
      $backingMap = JsBackedMap.from(someMap ?? JsMap());
    }
    return this;
  }

  fromJs(dynamic someMap) {
    $backingMap = JsBackedMap.backedBy(someMap ?? JsMap());
    return this;
  }

  @override
  noSuchMethod(Invocation i) {
    String memberNameString = keyPrefix +
        i.memberName
            .toString()
            .replaceAll('Symbol("', '')
            .replaceAll('")', '')
            .replaceAll('=', '')
            .replaceAll('_', '-');
    if (i.isGetter) {
      return $backingMap[memberNameString];
    } else if (i.isSetter) {
      var value = i.positionalArguments.single;
      if (value is Function) {
        $backingMap[memberNameString] = allowInterop(value);
      } else if (value is Map) {
        $backingMap[memberNameString] = jsify(value);
      } else {
        $backingMap[memberNameString] = value;
      }
    }
  }
}

mixin UiMapViewMixin<K, V> on UiMapBase<K, V> implements Map<K, V> {
  @override
  Map<K2, V2> map<K2, V2>(MapEntry<K2, V2> f(K key, V value)) => $backingMap.map<K2, V2>(f);
  @override
  Iterable<MapEntry<K, V>> get entries => $backingMap.entries;
  @override
  void addEntries(Iterable<MapEntry<K, V>> newEntries) => $backingMap.addEntries(newEntries);
  @override
  void removeWhere(bool predicate(K key, V value)) => $backingMap.removeWhere(predicate);
  @override
  V update(K key, V update(V value), {V ifAbsent()}) => $backingMap.update(key, update, ifAbsent: ifAbsent);
  @override
  void updateAll(V update(K key, V value)) => $backingMap.updateAll(update);
  @override
  Map<RK, RV> cast<RK, RV>() => $backingMap.cast<RK, RV>();
  @override
  V operator [](Object key) => $backingMap[key];
  @override
  void operator []=(K key, V value) {
    $backingMap[key] = value;
  }

  @override
  void addAll(Map<K, V> other) {
    $backingMap.addAll(other);
  }

  @override
  void clear() {
    $backingMap.clear();
  }

  @override
  V putIfAbsent(K key, V ifAbsent()) => $backingMap.putIfAbsent(key, ifAbsent);
  @override
  bool containsKey(Object key) => $backingMap.containsKey(key);
  @override
  bool containsValue(Object value) => $backingMap.containsValue(value);
  @override
  void forEach(void action(K key, V value)) {
    $backingMap.forEach(action);
  }

  @override
  bool get isEmpty => $backingMap.isEmpty;
  @override
  bool get isNotEmpty => $backingMap.isNotEmpty;
  @override
  int get length => $backingMap.length;
  @override
  Iterable<K> get keys => $backingMap.keys;
  @override
  V remove(Object key) => $backingMap.remove(key);
  @override
  Iterable<V> get values => $backingMap.values;
}

class UiMapBase<K, V> {
  /// NO.
  JsBackedMap<K, V> $backingMap = JsBackedMap<K, V>();
}

mixin UiComponentInterface {
  ReactElement call([
    c0 = undefined,
    c1 = undefined,
    c2 = undefined,
    c3 = undefined,
    c4 = undefined,
    c5 = undefined,
    c6 = undefined,
    c7 = undefined,
    c8 = undefined,
    c9 = undefined,
    c10 = undefined,
    c11 = undefined,
    c12 = undefined,
    c13 = undefined,
    c14 = undefined,
    c15 = undefined,
    c16 = undefined,
    c17 = undefined,
    c18 = undefined,
    c19 = undefined,
    c20 = undefined,
    c21 = undefined,
    c22 = undefined,
    c23 = undefined,
    c24 = undefined,
    c25 = undefined,
    c26 = undefined,
    c27 = undefined,
    c28 = undefined,
    c29 = undefined,
    c30 = undefined,
    c31 = undefined,
    c32 = undefined,
    c33 = undefined,
    c34 = undefined,
    c35 = undefined,
    c36 = undefined,
    c37 = undefined,
    c38 = undefined,
    c39 = undefined,
    c40 = undefined,
    c41 = undefined,
    c42 = undefined,
    c43 = undefined,
    c44 = undefined,
    c45 = undefined,
    c46 = undefined,
    c47 = undefined,
    c48 = undefined,
    c49 = undefined,
    c50 = undefined,
    c51 = undefined,
    c52 = undefined,
    c53 = undefined,
    c54 = undefined,
    c55 = undefined,
    c56 = undefined,
    c57 = undefined,
    c58 = undefined,
    c59 = undefined,
    c60 = undefined,
    c61 = undefined,
    c62 = undefined,
    c63 = undefined,
    c64 = undefined,
    c65 = undefined,
    c66 = undefined,
    c67 = undefined,
    c68 = undefined,
    c69 = undefined,
    c70 = undefined,
    c71 = undefined,
    c72 = undefined,
    c73 = undefined,
    c74 = undefined,
    c75 = undefined,
    c76 = undefined,
    c77 = undefined,
    c78 = undefined,
    c79 = undefined,
    c80 = undefined,
    c81 = undefined,
    c82 = undefined,
    c83 = undefined,
    c84 = undefined,
    c85 = undefined,
    c86 = undefined,
    c87 = undefined,
    c88 = undefined,
    c89 = undefined,
    c90 = undefined,
    c91 = undefined,
    c92 = undefined,
    c93 = undefined,
    c94 = undefined,
    c95 = undefined,
    c96 = undefined,
    c97 = undefined,
    c98 = undefined,
    c99 = undefined,
    c100 = undefined,
  ]);
}

mixin UiConsumerComponentInterface<T> {
  ReactElement call([ReactElement Function(T) c0]);
}
