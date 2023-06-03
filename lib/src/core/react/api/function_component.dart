import 'dart:js';
import 'dart:js_util';

import 'package:reactor/src/core/maps/maps.dart';

extension FC<T extends Props> on Function(T props) {
  T Function() toFactory(T Function() propBuilder, {String? name}) {
    final component = allowInterop((T props, [legacyContext]) => this(props));
    if (name != null) {
      setProperty(component, 'displayName', name);
    } else {
      final displayName = toString().replaceAll('_closure', '').replaceAll('Closure \'', '').replaceAll('\'', '');
      setProperty(component, 'displayName', displayName);
    }
    final props = propBuilder()..$component = component;
    return () => props;
  }
}
