
import 'package:reactor/reactor.dart';

class WhateverProps extends Props {
  /// Test
  String testBool;
}

@ReactorComponent()
class Whatever extends Component<WhateverProps, State> {
  @override
  render() {
    (WhateverProps()..testBool = 'hi')();
  }
}