// GENERATED CODE - DO NOT MODIFY BY HAND

part of tic_tac_toe;

// **************************************************************************
// ReactorComponentGenerator
// **************************************************************************

class _SquarePropsInterface {
  String displayValue;

  Function handleSquareClick;
}

@ReactorProps()
class _SquareProps extends Props implements _SquarePropsInterface {}

// Component Factory
_SquareProps _Square([Map backingMap]) {
  var interopFunction = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.allowInterop((props, [context]) {
    _SquareProps tProps = _SquareProps().fromJs(props);
    return SquareComponent(
      tProps,
      tProps.displayValue,
      tProps.handleSquareClick,
    );
  });
  REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.define(interopFunction, 'name', 'Square');
  return _SquareProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = interopFunction;
}

class _BoardComponent extends BoardComponent {
  _BoardComponent() {
    this.reactComponentClass =
        REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.JsComponentBuilder(displayName: 'Board');
    reactComponentClass..render = render;
  }

  @override
  BoardProps get props => BoardProps().fromJs(reactComponentClass.props);

  @override
  State get state => State().fromJs(reactComponentClass.state);
}

// Component Instance
BoardProps _Board([Map backingMap]) {
  var _dartComp = _BoardComponent();
  return BoardProps()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = _dartComp.reactComponentClass.reactClass;
}

class _GameComponent extends GameComponent {
  _GameComponent() {
    this.reactComponentClass = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.JsComponentBuilder(
        displayName: 'Game', constructor: constructor);
    reactComponentClass..render = render;
  }

  @override
  Props get props => Props().fromJs(reactComponentClass.props);

  @override
  GameState get state => GameState().fromJs(reactComponentClass.state);
}

// Component Instance
Props _Game([Map backingMap]) {
  var _dartComp = _GameComponent();
  return Props()
    ..$backingMap = JsBackedMap.from(backingMap ?? {})
    ..$componentClass = _dartComp.reactComponentClass.reactClass;
}

// **************************************************************************
// ReactorPropsGenerator
// **************************************************************************

extension GeneratedBoardProps on BoardProps {
  List<dynamic> get squares => $backingMap['squares']; // false
  set squares(List<dynamic> v) => $backingMap['squares'] = v;

  dynamic Function(int) get handleClick => $backingMap['handleClick']; // false
  set handleClick(dynamic Function(int) v) => $backingMap['handleClick'] = v;
}
