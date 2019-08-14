/// This tic-tac-toe example is a Reactor implementation of the React.js Tutorial.
/// 
/// See: <https://reactjs.org/tutorial/>
library tic_tac_toe;
import 'package:reactor/reactor.dart';

part 'tic_tac_toe.reactor.g.dart';

//////////////////////////////////////////////////////////////////////////////
/// SQUARE ///////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
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
var Square = _Square;

@Component()
SquareComponent(UiProps props, String displayValue) {
  return (Dom.button()..className = 'square'..onClick = props.onClick..value=displayValue)([displayValue]);
}


//////////////////////////////////////////////////////////////////////////////
/// BOARD ////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
///
/// Javascript:
/// ```
/// class Board extends React.Component {
///   renderSquare(i) {
///     return (
///       <Square
///         value={this.props.squares[i]}
///         onClick={() => this.props.onClick(i)}
///       />
///     );
///   }
///
///   render() {
///     return (
///       <div>
///         <div className="board-row">
///           {this.renderSquare(0)}
///           {this.renderSquare(1)}
///           {this.renderSquare(2)}
///         </div>
///         <div className="board-row">
///           {this.renderSquare(3)}
///           {this.renderSquare(4)}
///           {this.renderSquare(5)}
///         </div>
///         <div className="board-row">
///           {this.renderSquare(6)}
///           {this.renderSquare(7)}
///           {this.renderSquare(8)}
///         </div>
///       </div>
///     );
///   }
/// }
/// ```

UiFactory<BoardProps> Board = _Board;

class BoardPropsInterface {
  List<dynamic> squares;
  Function(int squareId) handleClick;
}
class BoardProps extends UiProps implements BoardPropsInterface {}

@Component()
class BoardComponent extends UiComponent<BoardProps, UiState> {
  renderSquare(i) {
    return (Square()
      ..displayValue = this.props.squares[i]
      ..onClick = (_) { this.props.handleClick(i); }
    )();
  }

  @override
  render() {
    if (state?.isEmpty ?? true) {
      state = BoardState()
          ..stepNumber = 0
          ..history = [List.filled(9, null)]
          ..xIsNext = true;
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

//////////////////////////////////////////////////////////////////////////////
/// GAME /////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
///
/// Javascript:
/// ```
/// class Game extends React.Component {
///   constructor(props) {
///     super(props);
///     this.state = {
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
///     const history = this.state.history.slice(0, this.state.stepNumber + 1);
///     const current = history[history.length - 1];
///     const squares = current.squares.slice();
///     if (calculateWinner(squares) || squares[i]) {
///       return;
///     }
///     squares[i] = this.state.xIsNext ? "X" : "O";
///     this.setState({
///       history: history.concat([
///         {
///           squares: squares
///         }
///       ]),
///       stepNumber: history.length,
///       xIsNext: !this.state.xIsNext
///     });
///   }
///
///   jumpTo(step) {
///     this.setState({
///       stepNumber: step,
///       xIsNext: (step % 2) === 0
///     });
///   }
///
///   render() {
///     const history = this.state.history;
///     const current = history[this.state.stepNumber];
///     const winner = calculateWinner(current.squares);
///
///     const moves = history.map((step, move) => {
///       const desc = move ?
///         'Go to move #' + move :
///         'Go to game start';
///       return (
///         <li key={move}>
///           <button onClick={() => this.jumpTo(move)}>{desc}</button>
///         </li>
///       );
///     });
///
///     let status;
///     if (winner) {
///       status = "Winner: " + winner;
///     } else {
///       status = "Next player: " + (this.state.xIsNext ? "X" : "O");
///     }
///
///     return (
///       <div className="game">
///         <div className="game-board">
///           <Board
///             squares={current.squares}
///             onClick={i => this.handleClick(i)}
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
var Game = _Game;

class GameStateInterface {
  List history;
  bool xIsNext;
  int stepNumber;
}
class GameState extends UiState implements GameStateInterface {}

@Component()
class GameComponent extends UiComponent<UiProps, GameState> {

  handleClick(i) {
    var history = List.from(this.state.history);
    var current = history[history.length - 1];
    var squares = List.from(current);

    if (calculateWinner(squares) || squares[i] != null) {
      return;
    }

    squares[i] = this.state.xIsNext ? "X" : "O";
    history.add(squares);

    this.setState(GameState()
      ..history = history
      ..stepNumber = history.length
      ..xIsNext = !this.state.xIsNext
    );
  }

  jumpTo(step) {
    this.setState(GameState()
      ..stepNumber = step
      ..xIsNext = (step % 2) == 0
    );
  }
///   render() {
///     const history = this.state.history;
///     const current = history[this.state.stepNumber];
///     const winner = calculateWinner(current.squares);
///
///     const moves = history.map((step, move) => {
///       const desc = move ?
///         'Go to move #' + move :
///         'Go to game start';
///       return (
///         <li key={move}>
///           <button onClick={() => this.jumpTo(move)}>{desc}</button>
///         </li>
///       );
///     });
///
///     let status;
///     if (winner) {
///       status = "Winner: " + winner;
///     } else {
///       status = "Next player: " + (this.state.xIsNext ? "X" : "O");
///     }
///
///     return (
///       <div className="game">
///         <div className="game-board">
///           <Board
///             squares={current.squares}
///             onClick={i => this.handleClick(i)}
///           />
///         </div>
///         <div className="game-info">
///           <div>{status}</div>
///           <ol>{moves}</ol>
///         </div>
///       </div>
///     );
///   }
  @override
  render(){
    var history = this.state.history;
    var current = history[this.state.stepNumber];
    var winner = calculateWinner(current);
    var move = 0;
    var moves = history.map((step) {
      move++;
      var desc = move != null ?
        'Go to move #$move' :
        'Go to game start';
      return (
        (Dom.li()..key = move)(
          (Dom.button()..onClick = (el(toString()<li key={move}>
          <button onClick={() => this.jumpTo(move)}>{desc}</button>
        </li>
      ).toList();
    }  

    String status;

    if (winner) {
      status = "Winner: " + winner;
    } else {
      status = "Next player: " + (this.state.xIsNext ? "X" : "O");
    }

    return (Dom.div()..className='game')(
      (Dom.div()..className = 'game-board')(
        (Board()
          ..squares = current
          ..onClick = (e) => this.handleClick(i))(),
      ),
      (Dom.div()..className = 'game-info')(
        Dom.div()(status),
        Dom.ol()(moves),
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////
/// calculateWinner //////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
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
    if (squares[a] != null && squares[a] == squares[b] && squares[a] == squares[c]) {
      return squares[a];
    }
  }
  return null;
}