import 'package:reactor/src/core/react/react.dart';
import 'package:reactor/src/interop/react.dart' as interop;

/// Accepts a context object (the value returned from createContext) and
/// returns the current context value for that context. The current context
/// value is determined by the value prop of the nearest Context.Provider
/// above the calling component in the tree.
T useContext<T>(Context<T> contextType) {
  return interop.React.useContext<T>(contextType.jsThis);
}
