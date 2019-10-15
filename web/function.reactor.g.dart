// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function.dart';

// **************************************************************************
// ReactorComponentGenerator
// **************************************************************************

class _FunctionalPropsInterface {
  String placeholder;

  int myNum;
}

@ReactorProps()
class _FunctionalProps extends Props implements _FunctionalPropsInterface {}

// Component Factory
_FunctionalProps _Functional([Map backingMap]) {
  var interopFunction = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.allowInterop((props, [context]) {
    _FunctionalProps tProps = _FunctionalProps().fromJs(props);
    return FunctionalComponent(
      tProps,
      tProps.placeholder,
      tProps.myNum,
    );
  });
  REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.define(interopFunction, 'name', 'Functional');
  return _FunctionalProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = interopFunction;
}

// Component Factory
Functional2Props _Functional2([Map backingMap]) {
  var interopFunction = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.allowInterop((props, [context]) {
    Functional2Props tProps = Functional2Props().fromJs(props);
    return Functional2Component(
      tProps,
    );
  });
  REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.define(interopFunction, 'name', 'Functional2');
  return Functional2Props()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = interopFunction;
}

// Component Factory
Props _HookTest([Map backingMap]) {
  var interopFunction = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.allowInterop((props, [context]) {
    return HookTestComponent();
  });
  REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.define(interopFunction, 'name', 'HookTest');
  return Props()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = interopFunction;
}

// **************************************************************************
// ReactorPropsGenerator
// **************************************************************************

extension GeneratedFunctional2Props on Functional2Props {
  String get test => $backingMap['test']; // false
  set test(String v) => $backingMap['test'] = v;

  String get placeholder => $backingMap['placeholder']; // false
  set placeholder(String v) => $backingMap['placeholder'] = v;

  int get myNum => $backingMap['myNum']; // false
  set myNum(int v) => $backingMap['myNum'] = v;
}
