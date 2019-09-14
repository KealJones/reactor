// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple.dart';

// **************************************************************************
// ReactorComponentGenerator
// **************************************************************************

class _SimpleComponent extends SimpleComponent {
  _SimpleComponent() {
    this.reactJsComponent =
        REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED
            .JsComponentBuilder(displayName: 'Simple');
    reactJsComponent..render = render;
  }

  @override
  Props get props => Props().fromJs(reactJsComponent.props);

  @override
  State get state => State().fromJs(reactJsComponent.state);
}

// Component Instance
Props _Simple([Map backingMap]) {
  var _dartComp = _SimpleComponent();
  return Props()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = _dartComp.reactJsComponent.reactClass;
}
