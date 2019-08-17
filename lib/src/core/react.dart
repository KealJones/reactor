import 'dart:js_util' as js_util;
import 'dart:html';

import 'package:reactor/src/interop/react.dart' as reactjs;

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
}

class ReactDOM {
  static reactjs.ReactElement render(element, node, [callback]) => 
      reactjs.ReactDOM.render(element, node, callback);
}