library reactor.core.maps.props;

import 'package:reactor/src/core/maps/ui_maps.dart';

class ReactPropsInterface {
  List children;
  String key;
  dynamic ref;
  String className;
}

class Props extends UiProps implements ReactPropsInterface {
  Props([Map backingMap]) { 
    if (backingMap != null) $backingMap = backingMap;
  }
}

