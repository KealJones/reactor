// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function.dart';

// **************************************************************************
// Generator: ReactorComponentBuilder
// **************************************************************************

class _UiPropsInterface {
  String placeholder;

  int myNum;
}

class _UiProps extends UiProps implements _UiPropsInterface {}

// Component Factory
_UiProps _Functional() {
  var interopFunction = allowInterop((props, context) {
    _UiProps tProps = _UiProps().fromJs(props);
    return FunctionalComponent(
      tProps,
      tProps.placeholder,
      tProps.myNum,
    );
  });
  ReactorJsUtils.setInteropComponentName(interopFunction, 'Functional');
  return new _UiProps()..$componentClass = interopFunction;
}
