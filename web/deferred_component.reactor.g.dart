// GENERATED CODE - DO NOT MODIFY BY HAND

part of deferred_component;

// **************************************************************************
// ReactorComponentGenerator
// **************************************************************************

// Component Factory
Props _Deferred([Map backingMap]) {
  var interopFunction = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.allowInterop((props, [context]) {
    Props tProps = Props().fromJs(props);
    return DeferredComponent(
      tProps,
    );
  });
  REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.define(interopFunction, 'name', 'Deferred');
  return Props()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = interopFunction;
}
