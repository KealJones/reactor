import 'dart:html';

import 'package:reactor/reactor.dart';

class WhateverProps extends Props {
  /// Test
  String testBool;
}

@ReactorComponent()
class Whatever extends Component<WhateverProps, State> {
  @override
  render() {
    return props.testBool ?? 'nothing';
  }
}

main() {
  var content = Dom.div()();

  ReactDOM.render(content, querySelector('#content'));
}
