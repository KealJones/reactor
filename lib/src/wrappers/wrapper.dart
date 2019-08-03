library reactor.wrappers.wrapper;

/// This class is a wrapper for the jsObject. All the specific JsObject
/// wrappers extend from it.
abstract class JsWrapper<T> {
  JsWrapper([this.jsObject]);

  /// JS object.
  T jsObject;

  /// Creates a new JsWrapper type from a [jsObject].
  JsWrapper.fromJsObject(this.jsObject);

  fromJs(jsObject){
    this.jsObject = jsObject;
  }
}
