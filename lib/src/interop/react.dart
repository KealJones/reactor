@JS()
library reactor.interop.react;

import 'package:js/js.dart';
import 'package:reactor/src/interop/js.dart';

@JS()
class ReactDOM {
  external static ReactElement render(element, node, [callback]);
}

@JS()
@anonymous
class ReactComponentClass {
  external set propTypes(JsMap v);
  external JsMap get propTypes;
  external set contextType(Context v);
  external set defaultProps(JsMap v);
  external JsMap get defaultProps;
  external call([props, context, updater]);
  external dynamic get type;
  external get props;
  external set props(v);
  external get state;
  external set state(v);
  external setState(JsMap partialState, [dynamic callback]);
  external forceUpdate(callback);
  external replaceState();
  external get isReactComponent;
}

@JS()
@anonymous
class Context {
  external ReactComponentClass get Consumer;
  external ReactComponentClass get Provider;
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

@JS()
@anonymous
class RefObject<T> {
  T current;
}

@JS('React.Children')
class ReactChildren {
  external map(children, func, context);
  external forEach(children, forEachFunc, forEachContext);
  external count(children);
  external toArray(children);
  external only(children);
}

typedef int ObservedBitsFn(JsMap prev, JsMap next);

typedef S Reducer<S, A>(S prevState, A action);
typedef void Dispatch<A>(A value);

class ReducerState<R extends Reducer<S, dynamic>, S>{}
class ReducerAction<R extends Reducer<dynamic, A>, A>{}


@JS('React')
class React {
  external static String get version;

  external static ReactElement createElement(dynamic type,  [JsMap props, dynamic children]);
  external static ReactElement cloneElement(dynamic element, [JsMap props, dynamic children]);
  external static ReactComponentClass createFactory(dynamic type);
  external static bool isValidElement(dynamic object);

  external static ReactComponentClass get Fragment;
  external static ReactComponentClass get StrictMode;
  external static ReactComponentClass get Suspense;
  external static ReactComponentClass get Component;
  external static ReactComponentClass get PureComponent;
  external static ReactComponentClass get unstable_Profiler;
  external static ReactComponentClass get unstable_ConcurrentMode;

  external static ReactChildren get Children;

  external static RefObject<T> createRef<T>();
  external static ReactComponentClass forwardRef(ReactComponentClass render);

  external static Context createContext(dynamic defaultValue, ObservedBitsFn calculateChangedBits);

  external static ReactComponentClass lazy<T>(Promise<T> Function() componentFactory);
  external static ReactComponentClass memo(ReactComponentClass component, [bool Function(JsMap prevProps, JsMap nextProps) arePropsEqual]);

  external static dynamic useCallback(Function callback, [List<dynamic> dependencies]);
  external static T useContext<T>(dynamic contextType);
  external static void useEffect(void Function(), [List<dynamic> dependencies]);
  external static dynamic useImperativeHandle<T, R extends T>(RefObject<T> ref, R Function() init, [List<dynamic> dependencies]);
  external static void useDebugValue<T>(T value, dynamic Function(T value) format);
  external static dynamic useLayoutEffect(void Function() init, [List<dynamic> dependencies]);
  external static T useMemo<T>(T Function() componentFactory, [List<dynamic> dependencies]);
  external static List<dynamic> useReducer(Reducer reducer, dynamic initialArg, [init]);
  external static RefObject useRef<T>([T initialValue]);
  external static List<dynamic> useState<TState>(TState initialValue);
}

