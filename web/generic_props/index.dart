@JS()
library web;

import 'dart:html';
import 'dart:js_util';
import 'package:js/js.dart';
import 'package:reactor/reactor.dart';

// This staticInterop class is by far the most tedious and
// annoying part of the boilerplate for this approach.
@JS()
@anonymous
@staticInterop
class GenericExampleProps<T> extends Props {
  external factory GenericExampleProps();
}

// Use the extension to add properties to your props class.
extension GenericExamplePropsExt on GenericExampleProps {
  external dynamic _testList;
}

// The generic non-external generic typed members have to be in a separate extension from the externals.
extension GenericExamplePropsExt2<T> on GenericExampleProps<T> {
  // Obviously this requires a bit of jsify/dartify boilerplate, but it's not too bad.
  set testListDart(List<T> testList) => _testList = jsify(testList);
  List<T> get testListDart => (dartify(_testList) as List<dynamic>).cast<T>();
}

final GenericExampleBool = (GenericExampleProps<bool> props) {
  return Dom.span()(
      'Boolean List: ', props.testListDart.join(', '),
    );
}.toFactory(() => GenericExampleProps<bool>());

main() {
  var content = StrictMode()(
    Dom.h1()('Generic Props Class Example'),
    Dom.h5()('GenericExampleProps<bool>'),
    (GenericExampleBool()
      // You can only provide a list of bools here!
      ..testListDart = [true, false]
    )(
      'Woo!',
    ),
  );

  final root = ReactDOM.createRoot(querySelector('#content'));
  root.render(content);
}
