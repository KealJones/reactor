import 'dart:async';
import 'dart:html';
import 'dart:js';

import 'package:reactor/reactor.dart';
import 'package:reactor/src/interop/js.dart';

export 'package:reactor/src/interop/js.dart' show TestingLibraryReact;

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

Future<T> promiseToFuture<T>(Promise<T> promise) {
  final completer = new Completer<T>();
  promise.then(allowInterop(completer.complete), allowInterop(completer.completeError));
  return completer.future;
}
