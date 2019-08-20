// GENERATED CODE - DO NOT MODIFY BY HAND

part of tic_tac_toe;

// **************************************************************************
// ReactorComponentGenerator
// **************************************************************************

class _SquarePropsInterface {
  String displayValue;

  Function handleSquareClick;
}

class _SquareProps extends Props implements _SquarePropsInterface {}

// Component Factory
_SquareProps _Square([Map backingMap]) {
  var interopFunction = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED
      .allowInterop((props, [context]) {
    _SquareProps tProps = _SquareProps().fromJs(props);
    return SquareComponent(
      tProps,
      tProps.displayValue,
      tProps.handleSquareClick,
    );
  });
  REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.define(
      interopFunction, 'name', 'Square');
  return _SquareProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = interopFunction;
}

class _BoardComponent extends BoardComponent {
  _BoardComponent() {
    this.reactJsComponent =
        REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED
            .JsComponentBuilder(displayName: 'Board');
    reactJsComponent..render = render;
  }

  @override
  BoardProps get props => BoardProps().fromJs(reactJsComponent.props);

  @override
  State get state => State().fromJs(reactJsComponent.state);
}

// Component Instance
BoardProps _Board([Map backingMap]) {
  var _dartComp = _BoardComponent();
  return BoardProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = _dartComp.reactJsComponent.reactClass;
}

class _GameComponent extends GameComponent {
  _GameComponent() {
    this.reactJsComponent =
        REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED
            .JsComponentBuilder(displayName: 'Game', constructor: constructor);
    reactJsComponent..render = render;
  }

  @override
  Props get props => Props().fromJs(reactJsComponent.props);

  @override
  GameState get state => GameState().fromJs(reactJsComponent.state);
}

// Component Instance
Props _Game([Map backingMap]) {
  var _dartComp = _GameComponent();
  return Props()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = _dartComp.reactJsComponent.reactClass;
}
