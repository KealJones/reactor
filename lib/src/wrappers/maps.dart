library reactor.wrappers.maps;

import 'dart:collection';
import 'dart:js' show allowInterop;
import 'package:reactor/src/annotations/annotations.dart';
import 'package:reactor/src/dom/dom.dart';
import 'package:reactor/src/interop/interop.dart';
import 'package:reactor/src/wrappers/js_backed_map.dart';

class UiState extends UiMap {}

class UiProps extends BaseProps with UbiquitousDomProps implements ReactPropsInterface {}

class BaseProps extends UiMap  {
  /// NO.
  dynamic $componentClass;

  ReactElement call([c1, c2 = notSpecified, c3 = notSpecified, c4 = notSpecified, c5 = notSpecified, c6 = notSpecified, c7 = notSpecified, c8 = notSpecified, c9 = notSpecified, c10 = notSpecified, c11 = notSpecified, c12 = notSpecified, c13 = notSpecified, c14 = notSpecified, c15 = notSpecified, c16 = notSpecified, c17 = notSpecified, c18 = notSpecified, c19 = notSpecified, c20 = notSpecified, c21 = notSpecified, c22 = notSpecified, c23 = notSpecified, c24 = notSpecified, c25 = notSpecified, c26 = notSpecified, c27 = notSpecified, c28 = notSpecified, c29 = notSpecified, c30 = notSpecified]) {
    List childArguments = [c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30]
        .takeWhile((child) => !identical(child, notSpecified))
        .toList();
    return Function.apply(createElement, [this.$componentClass, this.$backingMap.jsObject, ...childArguments]);
  }
}

class ReactPropsInterface {
  List children;
  String key;
  dynamic ref;
}

class UiMap extends MapBase with ReactorMapBase, MapViewMixin {
  String keyPrefix = '';
  
  from(dynamic someMap){
    if (someMap is JsMap) {
      this.$backingMap = JsBackedMap.backedBy(someMap);
    } else if (someMap is Map) {
      this.$backingMap = JsBackedMap.from(someMap);
    }
    return this;
  }

  fromJs(dynamic someMap){
    this.$backingMap = JsBackedMap.backedBy(someMap);
    return this;
  }

  @override
  noSuchMethod(Invocation i){
    String memberNameString = keyPrefix+i.memberName.toString().replaceAll('Symbol("', '').replaceAll('")', '').replaceAll('=', '').replaceAll('_', '-');

    if (i.isGetter) {
      return this.$backingMap[memberNameString];
    } else if (i.isSetter) {

      var value = i.positionalArguments.single;
      if (value is Function){
        this.$backingMap[memberNameString] = allowInterop(value);
      } else {
        this.$backingMap[memberNameString] = value;
      }
    }
  }
}

mixin MapViewMixin<K, V> on ReactorMapBase<K, V> implements Map<K, V> {
  @override Map<K2, V2> map<K2, V2>(MapEntry<K2, V2> f(K key, V value)) => $backingMap.map<K2, V2>(f);
  @override Iterable<MapEntry<K, V>> get entries => $backingMap.entries;
  @override void addEntries(Iterable<MapEntry<K, V>> newEntries) => $backingMap.addEntries(newEntries);
  @override void removeWhere(bool predicate(K key, V value)) => $backingMap.removeWhere(predicate);
  @override V update(K key, V update(V value), {V ifAbsent()}) => $backingMap.update(key, update, ifAbsent: ifAbsent);
  @override void updateAll(V update(K key, V value)) => $backingMap.updateAll(update);
  @override Map<RK, RV> cast<RK, RV>() => $backingMap.cast<RK, RV>();
  @override V operator[](Object key) => $backingMap[key];
  @override void operator[]=(K key, V value) { $backingMap[key] = value; }
  @override void addAll(Map<K, V> other) { $backingMap.addAll(other); }
  @override void clear() { $backingMap.clear(); }
  @override V putIfAbsent(K key, V ifAbsent()) => $backingMap.putIfAbsent(key, ifAbsent);
  @override bool containsKey(Object key) => $backingMap.containsKey(key);
  @override bool containsValue(Object value) => $backingMap.containsValue(value);
  @override void forEach(void action(K key, V value)) { $backingMap.forEach(action); }
  @override bool get isEmpty => $backingMap.isEmpty;
  @override bool get isNotEmpty => $backingMap.isNotEmpty;
  @override int get length => $backingMap.length;
  @override Iterable<K> get keys => $backingMap.keys;
  @override V remove(Object key) => $backingMap.remove(key);
  @override Iterable<V> get values => $backingMap.values;
}

class ReactorMapBase<K, V> {
  /// NO.
  JsBackedMap<K, V> $backingMap = JsBackedMap<K, V>();
}