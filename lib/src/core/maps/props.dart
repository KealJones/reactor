@JS()
library reactor.core.maps.props;

import 'package:js/js.dart';
import 'package:reactor/src/core/constants.dart';
import 'package:reactor/src/core/maps/dom_props.dart';
import 'package:reactor/src/core/maps/ui_maps.dart';
import 'package:reactor/src/core/react.dart';
import 'package:reactor/src/interop/js.dart';
import 'package:reactor/src/interop/js_backed_map.dart';

@JS()
@anonymous
@staticInterop
class Props extends UiMap {
  external factory Props();
}

extension BasicProps on UiMap {
  /// A key is a special string attribute you need to include when creating lists of elements.
  /// Keys help React identify which items have changed, are added, or are removed.
  /// Keys should be given to the elements inside the array to give the elements a stable identity.
  /// Keys only make sense in the context of the surrounding array.
  /// https://reactjs.org/docs/lists-and-keys.html#keys
  external String? key;

  /// Refs provide a way to access DOM nodes or React elements created in the render method.
  /// https://reactjs.org/docs/refs-and-the-dom.html
  external dynamic ref;

  external List<dynamic>? children;
}

// extension UiMapView<K extends dynamic, V extends dynamic> on UiMap {
//   @override
//   Map<K2, V2> map<K2, V2>(MapEntry<K2, V2> f(K key, V value)) => this.map<K2, V2>(f);
//   @override
//   Iterable<MapEntry<dynamic, dynamic>> get entries => JsObject.entries(this);
//   @override
//   void addEntries(Iterable<MapEntry<K, V>> newEntries) => this.addEntries(newEntries);
//   @override
//   void removeWhere(bool predicate(K key, V value)) => this.removeWhere(predicate);
//   @override
//   V update(K key, V update(V value), {V Function()? ifAbsent}) => this.update(key, update, ifAbsent: ifAbsent);
//   @override
//   void updateAll(V update(K key, V value)) => this.updateAll(update);
//   @override
//   Map<RK, RV> cast<RK, RV>() => this.cast<RK, RV>();
//   @override
//   V? operator [](Object? key) => key == null ? null : this[key];
//   @override
//   void operator []=(K? key, V value) {
//     if (key != null) {
//       this[key] = value;
//     }
//   }

//   @override
//   void addAll(Map<K, V> other) {
//     this.addAll(other);
//   }

//   @override
//   void clear() {
//     this.clear();
//   }

//   @override
//   V putIfAbsent(K key, V ifAbsent()) => this.putIfAbsent(key, ifAbsent);
//   @override
//   bool containsKey(Object? key) => key == null ? false : this.containsKey(key);
//   @override
//   bool containsValue(Object? value) => value == null ? false : this.containsValue(value);
//   @override
//   void forEach(void action(K key, V value)) {
//     this.forEach(action);
//   }

//   @override
//   bool get isEmpty => this.isEmpty;
//   @override
//   bool get isNotEmpty => this.isNotEmpty;
//   @override
//   int get length => this.length;
//   @override
//   Iterable<K> get keys => JsObject.keys(this);
//   @override
//   V? remove(Object? key) => key == null ? null : this.remove(key);
//   @override
//   Iterable<V> get values => this.values;
// }

extension ComponentBuilder on Props {
  external dynamic $$component;

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
  ]) {
    // Gross hack around to not include the component in the props or be passed as a dom attribute
    final component = this.$$component;
    this.remove('\$\$component');
    final returnVal = createElement(
      component,
      this,
      [ c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90, c91, c92, c93, c94, c95, c96, c97, c98, c99, c100 ].takeWhile((child) => !identical(child, undefined)).toList(),
    );
    this.$$component = component;
    return returnVal;
  }
}
