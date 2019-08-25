import 'package:reactor/src/interop/react.dart';

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
