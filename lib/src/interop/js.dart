@JS()
library reactor.interop.js;

import 'dart:html';
import 'dart:js_util' as js_util;

import 'package:js/js.dart';
import 'package:reactor/src/annotations/annotations.dart';
import 'package:reactor/src/interop/utils.dart';

@JS()
@anonymous
class JsCreateReactComponent {
  external get compClass;
}

@JS()
@anonymous
class ReactComponent {
  external call([props, context, updater]);
  external dynamic get type;
  external get props;
  external set props(v);
  external get state;
  external set state(v);
  external setState(dynamic partialState, [dynamic callback]);
  external forceUpdate(callback);
  external replaceState();
  external get isReactComponent;
}

@JS('Function')
external WindowNoArgsFunction(String functionBody);

@JS('Function')
external Window1ArgsFunction(arg1,String functionBody);


@JS('Function')
external Window2ArgsFunction(arg1, arg2, String functionBody);

@JS('Function')
external Window3ArgsFunction(arg1, arg2, arg3, String functionBody);

@JS()
class React {
  external static ReactComponent get Component;
  external static String get version;
}

ReactElement createElement(component, props, children){
  return js_util.callMethod(
      js_util.getProperty(window, 'React'),
      'createElement',
      [
        component, 
        props, 
        ...children
      ],
    );
}

@JS()
class ReactDOM {
  external static ReactElement render(element, node, [callback]);
}

@JS('Object')
class WindowObject {
  external static defineProperty(dynamic o, String property, DefinePropertyValue);
  external static assign(target, source, [source2, source3]);
  external static Function([String arg1Name, String arg2Name, String arg3Name, String functionBody]);
}

@JS()
@anonymous
class DefinePropertyValue {
  external set value(String v);
  external set enumerable(bool v);
  external set configurable(bool v);
  external set writable(bool v);
  external factory DefinePropertyValue({
    enumerable,
    configurable,
    writable,
    value,
  });
}

@JS()
@anonymous
abstract class ReactElement {
  external ReactElementStore get _store; // ignore: unused_element

  /// The type of this element.
  ///
  /// For DOM components, this will be a [String] tagName (e.g., `'div'`, `'a'`).
  ///
  /// For composite components (react-dart or pure JS), this will be a [ReactClass].
  external dynamic get type;

  /// The props this element was created with.
  external dynamic get props;
  external set props(dynamic v);

    /// The state this element was created with.
  external dynamic get state;

  /// This element's `key`, which is used to uniquely identify it among its siblings.
  ///
  /// Not needed when children are passed variadically
  /// (as arguments to a factory, as opposed to items within a list/iterable).
  ///
  /// See: <https://reactjs.org/docs/reconciliation.html#keys>.
  external String get key;

  /// This element's `ref`, which can be used to access the associated
  /// [Component]/[ReactComponent]/[Element] after it has been rendered.
  ///
  /// See: <https://reactjs.org/docs/refs-and-the-dom.html>.
  external dynamic get ref;
}

@JS()
@anonymous
class ReactElementStore {
  external bool get validated;
  external set validated(bool value);
}
