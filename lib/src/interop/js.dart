@JS()
library reactor.interop.js;

import 'package:js/js.dart';

/// Javascript Interop Helpers

@JS('Function')
external JsNoArgFunction(String functionBody);

@JS('Function')
external Js1ArgFunction(arg1, String functionBody);

@JS('Function')
external Js2ArgFunction(arg1, arg2, String functionBody);

@JS('Function')
external Js3ArgFunction(arg1, arg2, arg3, String functionBody);

@JS('Object')
class JsObject {
  external static void defineProperty(dynamic o, String property, DefinePropertyValue value);
  external static void assign(JsMap target, JsMap source, [JsMap source2, JsMap source3]);
  external static Function([String arg1Name, String arg2Name, String arg3Name, String functionBody]);
  external static List<dynamic> keys(JsMap object);
  external static List<dynamic> values(JsMap object);
}

@JS('Reflect')
abstract class Reflect {
  external static bool deleteProperty(JsMap target, dynamic propertyKey);
}

@JS()
@anonymous
class DefinePropertyValue {
  external set value(String v);
  external set enumerable(bool v);
  external set configurable(bool v);
  external set writable(bool v);
  external factory DefinePropertyValue({
    enumerable,
    configurable,
    writable,
    value,
  });
}

@JS()
@anonymous
class JsMap {
  external factory JsMap();
}

@JS('Promise')
abstract class Promise<T> {
  external Promise then(onFulfilled(T value), onRejected(Object reason));
}
