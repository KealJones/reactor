library reactor.core.react;

import 'dart:js';
import 'dart:js_util' as js_util;
import 'dart:html';

import 'package:reactor/src/core/react/hooks/use_state.dart';
import 'package:reactor/src/interop/react.dart' as reactjs;
import 'package:reactor/src/core/react/react.dart' as react;

export 'package:reactor/src/interop/react.dart' show ReactElement;
export 'package:reactor/src/core/react/react.dart' show 
// Components
Fragment,
Suspense,
StrictMode,

// Hooks
useCallback,
useContext,
useDebugValue,
useEffect,
useImperativeHandle,
useLayoutEffect,
useMemo,
useReducer,
useRef,
useState;

// Utilities
reactjs.ReactElement createElement(component, props, children) {
  return js_util.callMethod(
    js_util.getProperty(window, 'React'),
    'createElement',
    [component, props, ...children],
  );
}

react.Context<T> createContext<T>([T defaultValue, Function calculateChangedBits]) {
  if (calculateChangedBits != null) {
    calculateChangedBits = allowInterop(calculateChangedBits);
  }
  return react.createContext(defaultValue, calculateChangedBits);
}

class ReactDOM {
  static reactjs.ReactElement render(element, node, [callback]) => reactjs.ReactDOM.render(element, node, callback);
}
