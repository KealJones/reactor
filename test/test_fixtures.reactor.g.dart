// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_fixtures.dart';

// **************************************************************************
// ReactorComponentGenerator
// **************************************************************************

// Component Factory
Props _Test([Map backingMap]) {
  var interopFunction = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED
      .allowInterop((props, [context]) {
    Props tProps = Props().fromJs(props);
    return TestComponent(
      tProps,
    );
  });
  REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.define(
      interopFunction, 'name', 'Test');
  return Props()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = interopFunction;
}
