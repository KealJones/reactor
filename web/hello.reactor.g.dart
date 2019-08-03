// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello.dart';

// **************************************************************************
// Generator: ReactorComponentBuilder
// **************************************************************************

class _HelloComponent extends HelloComponent {
  _HelloComponent() {
    this.reactorComponent = ReactComponentBuilder(displayName: 'Hello');
    reactorComponent
      ..render = render
      ..componentDidMount = componentDidMount
      ..componentDidUpdate = (_jsprevProps, _jsprevState, _jssnapshot) {
        return componentDidUpdate(HelloProps().fromJs(_jsprevProps),
            HelloState().fromJs(_jsprevState), _jssnapshot);
      };
  }

  @override
  HelloProps get props => HelloProps().fromJs(reactorComponent.props);

  @override
  HelloState get state => HelloState().fromJs(reactorComponent.state);
}

// Component Instance
HelloProps _Hello() {
  var _dartComp = _HelloComponent();
  return new HelloProps()
    ..$componentClass = _dartComp.reactorComponent.reactClass;
}
