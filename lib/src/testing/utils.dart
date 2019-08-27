import 'dart:html';

import 'package:reactor/reactor.dart';

const contentDivId = 'content';

enableTestMode({bool includeReactTestingLibrary = false}) {
  var reactJsScript = ScriptElement();
  var reactDomJsScript = ScriptElement();
  var contentDiv = (new DivElement()..id = contentDivId);
  reactJsScript.src = 'packages/reactor/js/react.development.js';
  reactDomJsScript.src = 'packages/reactor/js/react-dom.development.js';
  document.body.append(reactJsScript);
  document.body.append(reactDomJsScript);
  document.body.append(contentDiv);
  if (includeReactTestingLibrary){
    var reactTestingLibraryJsScript = ScriptElement();
    reactTestingLibraryJsScript.src='packages/reactor/js/testing-library-react.umd.js';
    document.body.append(reactTestingLibraryJsScript);
  }
}

render(element) {
  ReactDOM.render(element, querySelector('#$contentDivId'));
}
