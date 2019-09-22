// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_provider.dart';

// **************************************************************************
// ReactorComponentGenerator
// **************************************************************************

class _AppProviderPropsInterface {
  String placeholder;

  int myNum;
}

class _AppProviderProps extends Props implements _AppProviderPropsInterface {}

// Component Factory
_AppProviderProps _AppProvider([Map backingMap]) {
  var interopFunction = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.allowInterop((props, [context]) {
    _AppProviderProps tProps = _AppProviderProps().fromJs(props);
    return AppProviderComponent(
      tProps,
      tProps.placeholder,
      tProps.myNum,
    );
  });
  REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.define(interopFunction, 'name', 'AppProvider');
  return _AppProviderProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = interopFunction;
}
