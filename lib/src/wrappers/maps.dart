library reactor.wrappers.maps;

import 'dart:collection';
import 'dart:html';
import 'dart:js_util' as js_util;
import 'dart:js' show allowInterop;
import 'package:reactor/src/annotations/annotations.dart';
import 'package:reactor/src/dom/dom.dart';
import 'package:reactor/src/interop/interop.dart';
import 'package:reactor/src/wrappers/js_backed_map.dart';

class UiState extends UiMap {}

class UiProps extends BaseProps
    implements ReactPropsInterface {
      UiProps([backingMap]) { 
        if (backingMap != null) $backingMap = backingMap;
      }
    }

class BaseProps extends UiMap with UbiquitousDomProps, UiFunctionInterface {
  /// NO.
  dynamic $componentClass;

  /// Creates the ReactElement that will be returned from the component.
  ReactElement build(List<dynamic> children) {
    return createElement(
      this.$componentClass, 
      this.$backingMap.jsObject, 
      children,
    );
  }
  
  @override
  noSuchMethod(Invocation i) {
    if (i.isMethod && i.memberName == const Symbol('call')) {
      return build(i.positionalArguments.takeWhile((child) => !identical(child, notSpecified)).toList());
    }
    return super.noSuchMethod(i);
  }
}

// Imitates a function with 100 args
mixin UiFunctionInterface {
  ReactElement call([
      c0 = notSpecified,
      c1 = notSpecified,
      c2 = notSpecified,
      c3 = notSpecified,
      c4 = notSpecified,
      c5 = notSpecified,
      c6 = notSpecified,
      c7 = notSpecified,
      c8 = notSpecified,
      c9 = notSpecified,
      c10 = notSpecified,
      c11 = notSpecified,
      c12 = notSpecified,
      c13 = notSpecified,
      c14 = notSpecified,
      c15 = notSpecified,
      c16 = notSpecified,
      c17 = notSpecified,
      c18 = notSpecified,
      c19 = notSpecified,
      c20 = notSpecified,
      c21 = notSpecified,
      c22 = notSpecified,
      c23 = notSpecified,
      c24 = notSpecified,
      c25 = notSpecified,
      c26 = notSpecified,
      c27 = notSpecified,
      c28 = notSpecified,
      c29 = notSpecified,
      c30 = notSpecified,
      c31 = notSpecified,
      c32 = notSpecified,
      c33 = notSpecified,
      c34 = notSpecified,
      c35 = notSpecified,
      c36 = notSpecified,
      c37 = notSpecified,
      c38 = notSpecified,
      c39 = notSpecified,
      c40 = notSpecified,
      c41 = notSpecified,
      c42 = notSpecified,
      c43 = notSpecified,
      c44 = notSpecified,
      c45 = notSpecified,
      c46 = notSpecified,
      c47 = notSpecified,
      c48 = notSpecified,
      c49 = notSpecified,
      c50 = notSpecified,
      c51 = notSpecified,
      c52 = notSpecified,
      c53 = notSpecified,
      c54 = notSpecified,
      c55 = notSpecified,
      c56 = notSpecified,
      c57 = notSpecified,
      c58 = notSpecified,
      c59 = notSpecified,
      c60 = notSpecified,
      c61 = notSpecified,
      c62 = notSpecified,
      c63 = notSpecified,
      c64 = notSpecified,
      c65 = notSpecified,
      c66 = notSpecified,
      c67 = notSpecified,
      c68 = notSpecified,
      c69 = notSpecified,
      c70 = notSpecified,
      c71 = notSpecified,
      c72 = notSpecified,
      c73 = notSpecified,
      c74 = notSpecified,
      c75 = notSpecified,
      c76 = notSpecified,
      c77 = notSpecified,
      c78 = notSpecified,
      c79 = notSpecified,
      c80 = notSpecified,
      c81 = notSpecified,
      c82 = notSpecified,
      c83 = notSpecified,
      c84 = notSpecified,
      c85 = notSpecified,
      c86 = notSpecified,
      c87 = notSpecified,
      c88 = notSpecified,
      c89 = notSpecified,
      c90 = notSpecified,
      c91 = notSpecified,
      c92 = notSpecified,
      c93 = notSpecified,
      c94 = notSpecified,
      c95 = notSpecified,
      c96 = notSpecified,
      c97 = notSpecified,
      c98 = notSpecified,
      c99 = notSpecified,
      c100 = notSpecified,
  ]);
}

class ReactPropsInterface {
  List children;
  String key;
  dynamic ref;
  String className;
}

class UiMap extends MapBase with ReactorMapBase, MapViewMixin {
  String keyPrefix = '';

  from(dynamic someMap) {
    if (someMap is JsMap) {
      this.$backingMap = JsBackedMap.backedBy(someMap);
    } else if (someMap is Map) {
      this.$backingMap = JsBackedMap.from(someMap);
    }
    return this;
  }

  fromJs(dynamic someMap) {
    this.$backingMap = JsBackedMap.backedBy(someMap);
    return this;
  }

  @override
  noSuchMethod(Invocation i) {
    String memberNameString = this.keyPrefix +
        i.memberName
            .toString()
            .replaceAll('Symbol("', '')
            .replaceAll('")', '')
            .replaceAll('=', '')
            .replaceAll('_', '-');
    if (i.isGetter) {
      return this.$backingMap[memberNameString];
    } else if (i.isSetter) {
      var value = i.positionalArguments.single;
      if (value is Function) {
        this.$backingMap[memberNameString] = allowInterop(value);
      } else {
        this.$backingMap[memberNameString] = value;
      }
    }
    print(this.$backingMap);
  }
}

mixin MapViewMixin<K, V> on ReactorMapBase<K, V> implements Map<K, V> {
  @override
  Map<K2, V2> map<K2, V2>(MapEntry<K2, V2> f(K key, V value)) =>
      $backingMap.map<K2, V2>(f);
  @override
  Iterable<MapEntry<K, V>> get entries => $backingMap.entries;
  @override
  void addEntries(Iterable<MapEntry<K, V>> newEntries) =>
      $backingMap.addEntries(newEntries);
  @override
  void removeWhere(bool predicate(K key, V value)) =>
      $backingMap.removeWhere(predicate);
  @override
  V update(K key, V update(V value), {V ifAbsent()}) =>
      $backingMap.update(key, update, ifAbsent: ifAbsent);
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

class ReactorMapBase<K, V> {
  /// NO.
  JsBackedMap<K, V> $backingMap = JsBackedMap<K, V>();
}
