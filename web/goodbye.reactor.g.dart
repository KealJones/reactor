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
