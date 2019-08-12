// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function.dart';

// **************************************************************************
// Generator: ReactorComponentBuilder
// **************************************************************************

class __FunctionalPropsInterface {
  String placeholder;

  int myNum;
}

class __FunctionalProps extends UiProps implements __FunctionalPropsInterface {}

// Component Factory
__FunctionalProps _Functional() {
  var interopFunction = allowInterop((props, context) {
    __FunctionalProps tProps = __FunctionalProps().fromJs(props);
    return FunctionalComponent(
      tProps,
      tProps.placeholder,
      tProps.myNum,
    );
  });
  ReactorJsUtils.setInteropComponentName(interopFunction, 'Functional');
  return new __FunctionalProps()..$componentClass = interopFunction;
}
