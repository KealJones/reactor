// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello.dart';

// **************************************************************************
// ReactorComponentGenerator
// **************************************************************************

// Component Factory
UiProps _Test([Map backingMap]) {
  var interopFunction = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.allowInterop((props, [context]) {
    UiProps tProps = UiProps().fromJs(props);
    return TestComponent(
      tProps,
    );
  });
  REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.define(interopFunction, 'name', 'Test');
  return UiProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = interopFunction;
}

class _HelloComponent extends HelloComponent {
  _HelloComponent() {
    this.reactComponentClass =
        REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.JsComponentBuilder(displayName: 'Hello');
    reactComponentClass
      ..render = render
      ..componentDidMount = componentDidMount
      ..componentDidUpdate = (_jsprevProps, _jsprevState, _jssnapshot) {
        return componentDidUpdate(HelloProps().fromJs(_jsprevProps), HelloState().fromJs(_jsprevState), _jssnapshot);
      };
  }

  @override
  HelloProps get props => HelloProps().fromJs(reactComponentClass.props);

  @override
  HelloState get state => HelloState().fromJs(reactComponentClass.state);
}

// Component Instance
HelloProps _Hello([Map backingMap]) {
  var _dartComp = _HelloComponent();
  return HelloProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = _dartComp.reactComponentClass.reactClass;
}

// **************************************************************************
// ReactorPropsGenerator
// **************************************************************************

extension GeneratedHelloProps on HelloProps {
  ExampleDartValue get dartVal => $backingMap['dartVal']; // false
  set dartVal(ExampleDartValue v) => $backingMap['dartVal'] = v;

  bool get isThisDefault => $backingMap['isThisDefault']; // false
  set isThisDefault(bool v) => $backingMap['isThisDefault'] = v;
}

// **************************************************************************
// ReactorStateGenerator
// **************************************************************************

extension GeneratedHelloState on HelloState {
  String get usersName => $backingMap['usersName']; // false
  set usersName(String v) => $backingMap['usersName'] = v;
}
