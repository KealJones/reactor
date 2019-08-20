library reactor.core.react;

import 'dart:js_util' as js_util;
import 'dart:html';

import 'package:reactor/src/core/react/hooks/use_state.dart' as use_state;
import 'package:reactor/src/interop/react.dart' as reactjs;
import 'package:reactor/src/core/react/hooks/hooks.dart' as hooks;
import 'package:reactor/src/core/react/components/fragment.dart' as fragment;

export 'package:reactor/src/interop/react.dart' show ReactElement;

class React {
  static reactjs.ReactElement createElement(component, props, children){
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
  static get Fragment => fragment.Fragment;
  static use_state.UseStateObject<TState> useState<TState>(TState initialState) => hooks.useState(initialState);
  static void useEffect(void Function() sideEffect) => hooks.useEffect(sideEffect);
}

class ReactDOM {
  static reactjs.ReactElement render(element, node, [callback]) => 
      reactjs.ReactDOM.render(element, node, callback);
}