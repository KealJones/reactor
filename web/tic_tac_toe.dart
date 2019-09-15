/// This tic-tac-toe example is a Reactor implementation of the React.js Tutorial.
///
/// See: <https://reactjs.org/tutorial/>
library tic_tac_toe;

import 'package:reactor/reactor.dart';

part 'tic_tac_toe.reactor.g.dart';

/// SQUARE ///////////////////////////////////////////////////////////////////
///
/// Javascript:
/// ```
/// function Square(props) {
///   return (
///     <button className="square" onClick={props.onClick}>
///       {props.value}
///     </button>
///   );
/// }
/// ```
Factory<_SquareProps> Square = _Square;

@ReactorComponent()
SquareComponent(
    _SquareProps props, String displayValue, Function handleSquareClick) {
  return (Dom.button()
    ..className = 'square'
    ..onClick = (SyntheticMouseEvent event) {
      handleSquareClick();
    }
    ..value = displayValue)([displayValue]);
}

/// BOARD ////////////////////////////////////////////////////////////////////
///
/// Javascript:
/// ```
/// class Board extends React.Component {
///   renderSquare(i) {
///     return (
///       <Square
///         value={props.squares[i]}
///         onClick={() => props.onClick(i)}
///       />
///     );
///   }
///
///   render() {
///     return (
///       <div>
///         <div className="board-row">
///           {renderSquare(0)}
///           {renderSquare(1)}
///           {renderSquare(2)}
///         </div>
///         <div className="board-row">
///           {renderSquare(3)}
///           {renderSquare(4)}
///           {renderSquare(5)}
///         </div>
///         <div className="board-row">
///           {renderSquare(6)}
///           {renderSquare(7)}
///           {renderSquare(8)}
///         </div>
///       </div>
///     );
///   }
/// }
/// ```

Factory<BoardProps> Board = _Board;

class BoardPropsInterface {
  List<dynamic> squares;
  Function(int squareId) handleClick;
}

class BoardProps extends Props implements BoardPropsInterface {}

@ReactorComponent()
class BoardComponent extends Component<BoardProps, State> {
  renderSquare(i) {
    return (Square()
      ..displayValue = props.squares[i]
      ..handleSquareClick = () => props.handleClick(i))();
  }

  @override
  render() {
    return Dom.div()(
      (Dom.div()..className = 'board-row')(
        renderSquare(0),
        renderSquare(1),
        renderSquare(2),
      ),
      (Dom.div()..className = 'board-row')(
        renderSquare(3),
        renderSquare(4),
        renderSquare(5),
      ),
      (Dom.div()..className = 'board-row')(
        renderSquare(6),
        renderSquare(7),
        renderSquare(8),
      ),
    );
  }
}

/// GAME /////////////////////////////////////////////////////////////////////
///
/// Javascript:
/// ```
/// class Game extends React.Component {
///   constructor(props) {
///     super(props);
///     state = {
///       history: [
///         {
///           squares: Array(9).fill(null)
///         }
///       ],
///       stepNumber: 0,
///       xIsNext: true
///     };
///   }
///
///   handleClick(i) {
///     const history = state.history.slice(0, state.stepNumber + 1);
///     const current = history[history.length - 1];
///     const squares = current.squares.slice();
///     if (calculateWinner(squares) || squares[i]) {
///       return;
///     }
///     squares[i] = state.xIsNext ? "X" : "O";
///     setState({
///       history: history.concat([
///         {
///           squares: squares
///         }
///       ]),
///       stepNumber: history.length,
///       xIsNext: !state.xIsNext
///     });
///   }
///
///   jumpTo(step) {
///     setState({
///       stepNumber: step,
///       xIsNext: (step % 2) === 0
///     });
///   }
///
///   render() {
///     const history = state.history;
///     const current = history[state.stepNumber];
///     const winner = calculateWinner(current.squares);
///
///     const moves = history.map((step, move) => {
///       const desc = move ?
///         'Go to move #' + move :
///         'Go to game start';
///       return (
///         <li key={move}>
///           <button onClick={() => jumpTo(move)}>{desc}</button>
///         </li>
///       );
///     });
///
///     let status;
///     if (winner) {
///       status = "Winner: " + winner;
///     } else {
///       status = "Next player: " + (state.xIsNext ? "X" : "O");
///     }
///
///     return (
///       <div className="game">
///         <div className="game-board">
///           <Board
///             squares={current.squares}
///             onClick={i => handleClick(i)}
///           />
///         </div>
///         <div className="game-info">
///           <div>{status}</div>
///           <ol>{moves}</ol>
///         </div>
///       </div>
///     );
///   }
/// }
/// ```
Factory<Props> Game = _Game;

class GameStateInterface {
  List<List<String>> history;
  bool xIsNext;
  int stepNumber;
}

class GameState extends State implements GameStateInterface {}

@ReactorComponent()
class GameComponent extends Component<Props, GameState> {
  @override
  constructor() {
    state = GameState()
      ..history = [List<String>.filled(9, null)]
      ..stepNumber = 0
      ..xIsNext = true;
  }

  handleClick(i) {
    var history =
        List<List<String>>.from(state.history).sublist(0, state.stepNumber + 1);
    var squares = List<String>.from(history[(history.length - 1)]);

    if (calculateWinner(squares) != null || squares[i] != null) {
      return;
    }

    squares[i] = state.xIsNext ? "X" : "O";

    setState(GameState()
      ..history = (List<List<String>>.from(history)..add(squares))
      ..stepNumber = history.length
      ..xIsNext = !state.xIsNext);
  }

  jumpTo(step) {
    setState(GameState()
      ..stepNumber = step
      ..xIsNext = (step % 2) == 0);
  }

  @override
  render() {
    var history = List<List<String>>.from(state.history);
    var current = history[state.stepNumber];
    var winner = calculateWinner(current);
    var moves = history.map((step) {
      var move = history.indexOf(step);
      var desc = move != 0 ? 'Go to move #$move' : 'Go to game start';
      return (Dom.li()
        ..key = '$move')((Dom.button()..onClick = (_) => jumpTo(move))(desc));
    }).toList();

    String status;

    if (winner != null) {
      status = "Winner: " + winner;
    } else {
      status = "Next player: " + (state.xIsNext ? "X" : "O");
    }

    return (Dom.div()..className = 'game')(
      (Dom.div()..className = 'game-board')((Board()
        ..squares = current
        ..handleClick = handleClick)()),
      (Dom.div()..className = 'game-info')(
        Dom.div()(status),
        Dom.ol()(moves),
      ),
    );
  }
}

/// calculateWinner //////////////////////////////////////////////////////////
///
/// Javascript:
/// ```
/// function calculateWinner(squares) {
///   const lines = [
///     [0, 1, 2],
///     [3, 4, 5],
///     [6, 7, 8],
///     [0, 3, 6],
///     [1, 4, 7],
///     [2, 5, 8],
///     [0, 4, 8],
///     [2, 4, 6]
///   ];
///   for (let i = 0; i < lines.length; i++) {
///     const [a, b, c] = lines[i];
///     if (squares[a] && squares[a] === squares[b] && squares[a] === squares[c]) {
///       return squares[a];
///     }
///   }
///   return null;
/// }
/// ```
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
    if (squares[a] != null &&
        squares[a] == squares[b] &&
        squares[a] == squares[c]) {
      return squares[a];
    }
  }
  return null;
}
