// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tick_tack_toe.dart';

// **************************************************************************
// Generator: ReactorComponentBuilder
// **************************************************************************

class __SquarePropsInterface {
  String displayValue;
}

class __SquareProps extends UiProps implements __SquarePropsInterface {}

// Component Factory
__SquareProps _Square() {
  var interopFunction = allowInterop((props, context) {
    __SquareProps tProps = __SquareProps().fromJs(props);
    return SquareComponent(
      tProps,
      tProps.displayValue,
    );
  });
  ReactorJsUtils.setInteropComponentName(interopFunction, 'Square');
  return new __SquareProps()..$componentClass = interopFunction;
}

class _BoardComponent extends BoardComponent {
  _BoardComponent() {
    this.reactorComponent = ReactComponentBuilder(displayName: 'Board');
    reactorComponent..render = render;
  }

  @override
  BoardProps get props => BoardProps().fromJs(reactorComponent.props);

  @override
  BoardState get state => BoardState().fromJs(reactorComponent.state);
}

// Component Instance
BoardProps _Board() {
  var _dartComp = _BoardComponent();
  return new BoardProps()
    ..$componentClass = _dartComp.reactorComponent.reactClass;
}

class _GameComponent extends GameComponent {
  _GameComponent() {
    this.reactorComponent = ReactComponentBuilder(displayName: 'Game');
    reactorComponent..render = render;
  }

  @override
  UiProps get props => UiProps().fromJs(reactorComponent.props);

  @override
  UiState get state => UiState().fromJs(reactorComponent.state);
}

// Component Instance
UiProps _Game() {
  var _dartComp = _GameComponent();
  return new UiProps()..$componentClass = _dartComp.reactorComponent.reactClass;
}
