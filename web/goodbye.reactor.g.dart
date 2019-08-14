// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goodbye.dart';

// **************************************************************************
// Generator: ReactorComponentBuilder
// **************************************************************************

class _GoodbyeComponent extends GoodbyeComponent {
  _GoodbyeComponent() {
    this.reactorComponent = ReactComponentBuilder(displayName: 'Goodbye');
    reactorComponent
      ..render = render
      ..getDerivedStateFromProps = (_js_props, _jsstate) {
        return getDerivedStateFromProps(GoodbyeProps().fromJs(_js_props),
                GoodbyeState().fromJs(_jsstate))
            .$backingMap
            .jsObject;
      };
  }

  @override
  GoodbyeProps get props => GoodbyeProps().fromJs(reactorComponent.props);

  @override
  GoodbyeState get state => GoodbyeState().fromJs(reactorComponent.state);
}

// Component Instance
GoodbyeProps _Goodbye([Map backingMap]) {
  var _dartComp = _GoodbyeComponent();
  return new GoodbyeProps()
    ..$backingMap = backingMap ?? JsBackedMap()
    ..$componentClass = _dartComp.reactorComponent.reactClass;
}
