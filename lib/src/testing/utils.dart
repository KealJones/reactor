import 'dart:html';

import 'package:reactor/reactor.dart';

const contentDivId = 'content';

enableTestMode() {
  var reactJsScript = document.createElement('script');
  var reactDomJsScript = document.createElement('script');
  var contentDiv = (new DivElement()..id = contentDivId);
  reactJsScript.attributes.addAll({'src':'packages/reactor/js/react.development.js',});
  reactDomJsScript.attributes.addAll({'src':'packages/reactor/js/react-dom.development.js',});
  document.body.append(reactJsScript);
  document.body.append(reactDomJsScript);
  document.body.append(contentDiv);
}

render(element){
  ReactDOM.render(element, querySelector('#$contentDivId'));
}
