import 'package:reactor/src/core/react/react.dart' as react;
import 'package:reactor/src/interop/react.dart';

T useContext<T>(react.Context<T> contextType) {
  return React.useContext<T>(contextType.jsThis);
}
