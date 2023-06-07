library reactor.core.react;


import 'package:reactor/src/interop/react.dart' as reactjs;

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

class ReactDOM {
  static reactjs.ReactRoot createRoot(element) => reactjs.ReactDOM.createRoot(element);
}
