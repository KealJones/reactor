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
