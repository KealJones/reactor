library reactor.core.react;

import 'dart:js';
import 'dart:js_util' as js_util;
import 'dart:html';

import 'package:reactor/src/interop/react.dart' as reactjs;
import 'package:reactor/src/core/react/react.dart' as react;

export 'package:reactor/src/interop/react.dart' show ReactElement;
export 'package:reactor/src/core/react/react.dart'
    show
// APIs
        createContext,
        createElement,

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
        useState,

// Extensions
        FC;

// Utilities




class ReactDOM {
  static reactjs.ReactRoot createRoot(element) => reactjs.ReactDOM.createRoot(element);
}
