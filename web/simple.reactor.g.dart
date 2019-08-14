// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple.dart';

// **************************************************************************
// Generator: ReactorComponentBuilder
// **************************************************************************

class _SimpleComponent extends SimpleComponent {
  _SimpleComponent() {
    this.reactorComponent = ReactComponentBuilder(displayName: 'Simple');
    reactorComponent..render = render;
  }

  @override
  UiProps get props => UiProps().fromJs(reactorComponent.props);

  @override
  UiState get state => UiState().fromJs(reactorComponent.state);
}

// Component Instance
UiProps _Simple([Map backingMap]) {
  var _dartComp = _SimpleComponent();
  return new UiProps()
    ..$backingMap = backingMap ?? JsBackedMap()
    ..$componentClass = _dartComp.reactorComponent.reactClass;
}
