// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goodbye.dart';

// **************************************************************************
// ReactorComponentGenerator
// **************************************************************************

class _GoodbyeComponent extends GoodbyeComponent {
  _GoodbyeComponent() {
    this.reactJsComponent =
        REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.JsComponentBuilder(displayName: 'Goodbye');
    reactJsComponent
      ..render = render
      ..getDerivedStateFromProps = (_js_props, _jsstate) {
        return getDerivedStateFromProps(GoodbyeProps().fromJs(_js_props), GoodbyeState().fromJs(_jsstate))
            .$backingMap
            .jsObject;
      };
  }

  @override
  GoodbyeProps get props => GoodbyeProps().fromJs(reactJsComponent.props);

  @override
  GoodbyeState get state => GoodbyeState().fromJs(reactJsComponent.state);
}

// Component Instance
GoodbyeProps _Goodbye([Map backingMap]) {
  var _dartComp = _GoodbyeComponent();
  return GoodbyeProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = _dartComp.reactJsComponent.reactClass;
}
