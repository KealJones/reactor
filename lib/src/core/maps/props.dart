library reactor.core.maps.props;

import 'package:reactor/src/core/maps/dom_props.dart';
import 'package:reactor/src/core/maps/ui_maps.dart';

class ReactPropsInterface {
  List children;
  String key;
  dynamic ref;
  String className;
}

class Props extends UiProps with UbiquitousDomProps implements ReactPropsInterface {
  Props([Map backingMap]) {
    $backingMap = backingMap ?? $backingMap;
  }
}
