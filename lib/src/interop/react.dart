@JS()
library reactor.interop.react;

import 'package:js/js.dart';

/// React.js Interop Classes
@JS()
class React {
  external static String get version;

  // Components
  external static ReactJsComponent get Component;
  external static ReactJsComponent get Fragment;

  // Hooks
  external static dynamic useState<TState>(TState initalState);
  external static void useEffect(void Function());

  // Utilites
  external static dynamic createRef();
}

@JS()
class ReactDOM {
  external static ReactElement render(element, node, [callback]);
}

@JS()
@anonymous
class ReactJsComponent {
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
  /// [Component]/[JsReactComponent]/[Element] after it has been rendered.
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
