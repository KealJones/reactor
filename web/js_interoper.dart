import 'dart:core';
import 'dart:js_util' as js_util;
import 'dart:html';

import 'package:reactor/reactor.dart';

String interoper(String fileSrc, String objectToInteropName, {dynamic nestedInObject, bool asStatic = false, bool asAnnonymous = false}) {
  return jsToInterop('packages/reactor/js/testing-library-react.umd.js', 'TestingLibraryReact', asStatic: true).map((key, val){
    return MapEntry(key, interoperClassWrap(key, val));
  }).values.join('\n');
}

Map jsToInterop(String fileSrc, String objectToInteropName, {dynamic nestedInObject, bool asStatic = false, bool asAnnonymous = false}) {
  var scriptTag = ScriptElement();
  Map<String, String> interopedClasses = {};
  var otherKeysToInterop = [];

  scriptTag..src = fileSrc;

  document.body.append(scriptTag);

  var theObject = js_util.getProperty(nestedInObject ?? window, objectToInteropName);
  var theDartVersion = JsBackedMap.fromJs(theObject);
  
  theDartVersion.forEach((key, val) {
    var interopConversionValue = jsKeyValueToInterop(key.toString(), val.toString(), asStatic: asStatic);
    if (interopConversionValue.contains(' get ')) {
      otherKeysToInterop.add(key);
    }

    if (interopedClasses[objectToInteropName] == null) {
      interopedClasses[objectToInteropName] = interopConversionValue;
    } else {
      interopedClasses[objectToInteropName] += interopConversionValue;
    }
  
  });
  if (otherKeysToInterop.isNotEmpty) {
    otherKeysToInterop.forEach((key) {
      interopedClasses..addAll(jsToInterop(fileSrc, key, nestedInObject: theObject, asAnnonymous: true));
    });
  }
  return interopedClasses;
}

String interoperClassWrap(String key, String inner, {bool asAnnonymous = false}) {
  var classNameValue = capitalize(key);
  return '''
@JS('$classNameValue')${asAnnonymous ? "\n@annonymous" : ""}
external class $classNameValue {
$inner}
''';
}

String capitalize(String s) => '${s[0].toUpperCase()}${s.substring(1)}';

String jsKeyValueToInterop(String jsKey, String jsValue, {bool asStatic = true}) {
  var prefix = 'external${asStatic ? " static " : " "}';
  //print(function);
  //example: function buildQueries(queryAllBy, getMultipleError, getMissingError) {
  var functionRegex = RegExp('function.*?\\\((.*?)\\\) {');
  var match = functionRegex.firstMatch(jsValue);
  if (match != null) return '  ' + prefix + '$jsKey(' + match.group(1) + ');\n';
  if (jsValue.toString() == '[object Object]') {
    return '  $prefix${capitalize(jsKey)} get $jsKey;\n';
  }
 
  return '  $prefix get $jsKey;\n$prefix set $jsKey(value);\n';
}


