// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function.dart';

// **************************************************************************
// Generator: ReactorComponentBuilder
// **************************************************************************

class _FunctionalPropsInterface {
  String placeholder;

  int myNum;
}

class _FunctionalProps extends UiProps implements _FunctionalPropsInterface {}

// Component Factory
_FunctionalProps _Functional() {
  return new _FunctionalProps()
    ..$componentClass = allowInterop((props, context) {
      _FunctionalProps tProps = _FunctionalProps().fromJs(props);
      return FunctionalComponent(
        tProps,
        tProps.placeholder,
        tProps.myNum,
      );
    });
}
