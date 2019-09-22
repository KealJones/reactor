library reactor.core.react;

import 'dart:js';
import 'dart:js_util' as js_util;
import 'dart:html';

import 'package:reactor/src/core/react/hooks/use_state.dart';
import 'package:reactor/src/interop/react.dart' as reactjs;
import 'package:reactor/src/core/react/react.dart' as react;

export 'package:reactor/src/interop/react.dart' show ReactElement;
export 'package:reactor/src/core/react/hooks/hooks.dart';

class React {
  static reactjs.ReactElement createElement(component, props, children) {
    return js_util.callMethod(
      js_util.getProperty(window, 'React'),
      'createElement',
      [component, props, ...children],
    );
  }

  static react.Context<T> createContext<T>([T defaultValue, Function calculateChangedBits]) {
    if (calculateChangedBits != null) {
      calculateChangedBits = allowInterop(calculateChangedBits);
    }
    return react.createContext(defaultValue, calculateChangedBits);
  }

  static get Fragment => react.Fragment;
  static get Suspense => react.Suspense;
  static UseStateObject<TState> useState<TState>(TState initialState) => react.useState(initialState);
  static void useEffect(void Function() sideEffect) => react.useEffect(sideEffect);
  static T useContext<T>(react.Context<T> contextType) => react.useContext<T>(contextType);
}

class ReactDOM {
  static reactjs.ReactElement render(element, node, [callback]) => reactjs.ReactDOM.render(element, node, callback);
}
