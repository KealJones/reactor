import 'dart:js';

import 'package:reactor/src/interop/react.dart';

/// Accepts a function that contains imperative, possibly effectful code.
///
/// Mutations, subscriptions, timers, logging, and other side effects are not
/// allowed inside the main body of a function component (referred to as
/// React’s render phase). Doing so will lead to confusing bugs and
/// inconsistencies in the UI.
///
/// Instead, use useEffect. The function passed to useEffect will run after the
/// render is committed to the screen. Think of effects as an escape hatch
/// from React’s purely functional world into the imperative world.
///
/// By default, effects run after every completed render, but you can choose to
/// fire it only when certain values have changed.
void useEffect(void Function() sideEffect) {
  React.useEffect(allowInterop(sideEffect));
}
