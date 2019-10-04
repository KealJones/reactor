import 'package:reactor/src/interop/react.dart';

/// Returns a stateful value, and a function to update it.
///
/// During the initial render, the returned state (state) is the same as the
/// value passed as the first argument (initialState).
UseStateObject<TState> useState<TState>(TState initalState) {
  var stateStuff = React.useState(initalState);
  return UseStateObject<TState>(stateStuff[0], stateStuff[1]);
}

class UseStateObject<TState> {
  TState value;
  void Function(TState value) set;

  UseStateObject(
    this.value,
    this.set,
  );
}
