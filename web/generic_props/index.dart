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
  // You can change the name of the property that is actually used in JS!
  @JS('data-jsname')
  external String? dataJsName;

  external Function testFunction;

  external dynamic _testList;
}

extension GenericExamplePropsExt2<T> on GenericExampleProps<T> {
  set testListDart(List<T> testList) => _testList = jsify(testList);
  List<T> get testListDart => (dartify(_testList) as List<dynamic>).cast<T>();
}

// This is pretty sweet, it gets the name from the final variable name. :O
final GenericExampleBool = (GenericExampleProps<bool> props) {
  return Dom.span()(
      'Boolean List: ', props.testListDart.join(', '),
    );
  // Just call `toFactory` on the function component and pass in a function for
  // creating the props class you want to use on the factory.
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
