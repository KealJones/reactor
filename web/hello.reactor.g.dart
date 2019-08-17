// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello.dart';

// **************************************************************************
// ReactorComponentGenerator
// **************************************************************************

class _HelloComponent extends HelloComponent {
  _HelloComponent() {
    this.reactJsComponent =
        REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED
            .JsComponentBuilder(displayName: 'Hello');
    reactJsComponent
      ..render = render
      ..componentDidMount = componentDidMount
      ..componentDidUpdate = (_jsprevProps, _jsprevState, _jssnapshot) {
        return componentDidUpdate(HelloProps().fromJs(_jsprevProps),
            HelloState().fromJs(_jsprevState), _jssnapshot);
      };
  }

  @override
  HelloProps get props => HelloProps().fromJs(reactJsComponent.props);

  @override
  HelloState get state => HelloState().fromJs(reactJsComponent.state);
}

// Component Instance
HelloProps _Hello([Map backingMap]) {
  var _dartComp = _HelloComponent();
  return HelloProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = _dartComp.reactJsComponent.reactClass;
}
