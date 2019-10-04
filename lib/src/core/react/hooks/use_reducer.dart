import 'dart:js';

import 'package:reactor/src/interop/react.dart' as interop;

/// An alternative to useState. Returns the current state paired with a
/// dispatch method.
/// (If you’re familiar with Redux, you already know how this works.)
///
/// [useReducer] is usually preferable to useState when you have complex state
/// logic that involves multiple sub-values or when the next state depends on
/// the previous one. useReducer also lets you optimize performance for
/// components that trigger deep updates because you can pass dispatch down
/// instead of callbacks.
UseReducerObject<TState> useReducer<TState>(interop.Reducer<TState, dynamic> reducer,
    [TState initalState, TState Function(TState initialState) init]) {
  var stateStuff = interop.React.useReducer(allowInterop(reducer), initalState, allowInterop(init));
  return UseReducerObject<TState>(stateStuff[0], stateStuff[1]);
}

class UseReducerObject<TState> {
  TState value;
  void Function(dynamic action) dispatch;

  UseReducerObject(
    this.value,
    this.dispatch,
  );
}
