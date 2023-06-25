library reactor.testing.utils;

import 'dart:html';
import 'dart:js_util' as js_util;

const contentDivId = 'content';

enableTestMode({bool includeReactTestingLibrary = false}) {
  if (js_util.getProperty(window, 'React') == null) {
    var reactJsScript = ScriptElement();
    reactJsScript.src = 'packages/reactor/js/react.development.js';
    document.head?.append(reactJsScript);
  }
  if (js_util.getProperty(window, 'ReactDOM') == null) {
    var reactDomJsScript = ScriptElement();
    reactDomJsScript.src = 'packages/reactor/js/react-dom.development.js';
    document.head?.append(reactDomJsScript);
  }
  if (js_util.getProperty(window, 'ReactTestUtils') == null) {
    var reactDomTestUtilsJsScript = ScriptElement();
    reactDomTestUtilsJsScript.src = 'packages/reactor/js/react-dom-test-utils.development.js';
    document.head?.append(reactDomTestUtilsJsScript);
  }

  if (includeReactTestingLibrary && js_util.getProperty(window, 'TestingLibraryReact') == null) {
    var reactTestingLibraryCompatJsScript = ScriptElement();
    reactTestingLibraryCompatJsScript.innerHtml = '''
      window.ReactDom = ReactDOM;
      window.testUtils = ReactTestUtils;
    ''';
    document.head?.append(reactTestingLibraryCompatJsScript);

    var reactTestingLibraryJsScript = ScriptElement();
    reactTestingLibraryJsScript.src = 'packages/reactor/js/testing-library-react.umd.js';
    document.head?.append(reactTestingLibraryJsScript);
  }
}
