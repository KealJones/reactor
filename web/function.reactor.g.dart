// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function.dart';

// **************************************************************************
// ReactorComponentGenerator
// **************************************************************************

class _FunctionalPropsInterface {
  String placeholder;

  int myNum;
}

class _FunctionalProps extends Props implements _FunctionalPropsInterface {}

// Component Factory
_FunctionalProps _Functional([Map backingMap]) {
  var interopFunction = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED
      .allowInterop((props, context) {
    _FunctionalProps tProps = _FunctionalProps().fromJs(props);
    return FunctionalComponent(
      tProps,
      tProps.placeholder,
      tProps.myNum,
    );
  });
  REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.define(
      interopFunction, 'name', 'Functional');
  return _FunctionalProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = interopFunction;
}

class _HookTestPropsInterface {}

class _HookTestProps extends Props implements _HookTestPropsInterface {}

// Component Factory
_HookTestProps _HookTest([Map backingMap]) {
  var interopFunction = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED
      .allowInterop((props, context) {
    _HookTestProps tProps = _HookTestProps().fromJs(props);
    return HookTestComponent(
      tProps,
    );
  });
  REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.define(
      interopFunction, 'name', 'HookTest');
  return _HookTestProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = interopFunction;
}
