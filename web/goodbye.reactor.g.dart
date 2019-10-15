// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goodbye.dart';

// **************************************************************************
// ReactorComponentGenerator
// **************************************************************************

class _GoodbyeComponent extends GoodbyeComponent {
  _GoodbyeComponent() {
    this.reactComponentClass =
        REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.JsComponentBuilder(displayName: 'Goodbye');
    reactComponentClass
      ..render = render
      ..getDerivedStateFromProps = (_js_props, _jsstate) {
        return getDerivedStateFromProps(GoodbyeProps().fromJs(_js_props), GoodbyeState().fromJs(_jsstate))
            .$backingMap
            .jsObject;
      };
  }

  @override
  GoodbyeProps get props => GoodbyeProps().fromJs(reactComponentClass.props);

  @override
  GoodbyeState get state => GoodbyeState().fromJs(reactComponentClass.state);
}

// Component Instance
GoodbyeProps _Goodbye([Map backingMap]) {
  var _dartComp = _GoodbyeComponent();
  return GoodbyeProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = _dartComp.reactComponentClass.reactClass;
}

// **************************************************************************
// ReactorPropsGenerator
// **************************************************************************

extension GeneratedGoodbyeProps on GoodbyeProps {
  String get test => $backingMap['test']; // false
  set test(String v) => $backingMap['test'] = v;

  ExampleDartValue get dartVal => $backingMap['dartVal']; // false
  set dartVal(ExampleDartValue v) => $backingMap['dartVal'] = v;

  bool get isThisDefault => $backingMap['isThisDefault']; // false
  set isThisDefault(bool v) => $backingMap['isThisDefault'] = v;
}

// **************************************************************************
// ReactorStateGenerator
// **************************************************************************

extension GeneratedGoodbyeState on GoodbyeState {
  bool get matchesString => $backingMap['matchesString']; // false
  set matchesString(bool v) => $backingMap['matchesString'] = v;

  String get usersName => $backingMap['usersName']; // false
  set usersName(String v) => $backingMap['usersName'] = v;
}
