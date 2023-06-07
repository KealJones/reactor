@JS()
library reactor.core.constants;

import 'package:js/js.dart';

/// A const for use as an argument default to distinguish from an explicit `null`.
const undefined = _Undefined();

/// A const class for use as an argument default to distinguish from an explicit `null`.
class _Undefined {
  const _Undefined();
}
