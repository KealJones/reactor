// GENERATED CODE - DO NOT MODIFY BY HAND

part of deferred_component;

// **************************************************************************
// ReactorComponentGenerator
// **************************************************************************

class _DeferredComponent extends DeferredComponent {
  _DeferredComponent() {
    this.reactComponentClass = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.JsComponentBuilder(
        displayName: 'Deferred', initialState: initialState);
    reactComponentClass..render = render;
  }

  @override
  Props get props => Props().fromJs(reactComponentClass.props);

  @override
  State get state => State().fromJs(reactComponentClass.state);
}

// Component Instance
Props _Deferred([Map backingMap]) {
  var _dartComp = _DeferredComponent();
  return Props()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = _dartComp.reactComponentClass.reactClass;
}
