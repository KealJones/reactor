library reactor.core.maps.props;

import 'package:reactor/src/core/maps/dom_props.dart';
import 'package:reactor/src/core/maps/ui_maps.dart';

class ReactChildrenPropInterface {
  List children;
}

class ReactPropsInterface {
  String key;
  dynamic ref;
  String className;
}

class Props extends UiProps with UbiquitousDomProps implements ReactPropsInterface, ReactChildrenPropInterface {
  Props([Map backingMap]) {
    $backingMap = backingMap ?? $backingMap;
  }
}
