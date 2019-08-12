import 'package:reactor/reactor.dart';

part 'tick_tack_toe.reactor.g.dart';

var Square = _Square;

@Component()
SquareComponent(UiProps props, String displayValue) {
  return (Dom.button()..className = 'square'..onClick = props.onClick..value=displayValue)([displayValue]);
}

var Board = _Board;

class BoardPropsInterface {
  List<dynamic> squares;
}
class BoardProps extends UiProps implements BoardPropsInterface {}

class BoardStateInterface {
  List squares;
  bool xIsNext;
}
class BoardState extends UiState implements BoardStateInterface {}

@Component()
class BoardComponent extends UiComponent<BoardProps, BoardState> {
  handleClick(i) {
    var squares = state.squares;
    if (calculateWinner(squares) != null || squares[i] != null) {
      return;
    }
    squares[i] = state.xIsNext ? 'X' : 'O';
    setState((BoardState()
      ..squares = squares
      ..xIsNext = !state.xIsNext
    ));
  }

  renderSquare(i) {
    return (Square()
      ..onClick = (_) { handleClick(i); }
      ..displayValue = state.squares[i]
    )();
  }

  @override
  render() {
    if (state.squares == null) {
      state = BoardState()..squares = List.filled(9, null)..xIsNext = true;
    }
    var winner = calculateWinner(state.squares);
    var status;
    if (winner != null) {
      status = 'Winner: ' + winner;
    } else {
      status = 'Next player: ' + (state.xIsNext ? 'X' : 'O');
    }
    return Dom.div()(
      (Dom.div()..className='status')(status),
      (Dom.div()..className = 'board-row')(
        this.renderSquare(0),
        this.renderSquare(1),
        this.renderSquare(2),
      ),
      (Dom.div()..className = 'board-row')(
        this.renderSquare(3),
        this.renderSquare(4),
        this.renderSquare(5),
      ),
      (Dom.div()..className = 'board-row')(
        this.renderSquare(6),
        this.renderSquare(7),
        this.renderSquare(8),
      ),
    );
  }
}

var Game = _Game;

@Component()
class GameComponent extends UiComponent {
  @override
  render(){
    return (Dom.div()..className='game')(
      (Dom.div()..className = 'game-board')(
        Board()(),
      ),
      (Dom.div()..className = 'game-info')(
        Dom.div()(/* status */),
        Dom.ol()(/* TODO */),
      ),
    );
  }
}

calculateWinner(squares) {
  const lines = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ];
  for (var i = 0; i < lines.length; i++) {
    var a = lines[i][0];
    var b = lines[i][1];
    var c = lines[i][2];
    if (squares[a] != null && squares[a] == squares[b] && squares[a] == squares[c]) {
      return squares[a];
    }
  }
  return null;
}