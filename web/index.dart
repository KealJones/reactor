@JS()
library web;

import 'dart:html';
import 'package:js/js.dart';
import 'package:reactor/reactor.dart';

// This staticInterop class is by far the most tedious and
// annoying part of the boilerplate for this approach.
@JS()
@anonymous
@staticInterop
class BasicExampleProps extends Props {
  external factory BasicExampleProps();
}

// Use the extension to add properties to your props class.
extension BasicExamplePropsExt on BasicExampleProps {
  // You can change the name of the property that is actually used in JS!
  @JS('data-jsname')
  external String? dataJsName;

  external Function testFunction;

  external bool? testBool;


}

// This is pretty sweet, it gets the name from the final variable name. :O
final BasicExample = (BasicExampleProps props) {
  var unconsumedProps = BasicExampleProps()..addAllFromJs(props)..remove('testBool')..remove('testFunction');
  return (Dom.div()
      ..addAll(unconsumedProps)
    )(
      'Basic Example Children:',
      Dom.br()(),
      props.children,
    );
  // Just call `toFactory` on the function component and pass in a function for
  // creating the props class you want to use on the factory.
}.toFactory(() => BasicExampleProps());

main() {
  var content = StrictMode()(
    Dom.h1()('Examples'),
    (Dom.a()..href = '/multiple_props/')('Different Props Classes with One Function Component'),
    //(Dom.a()..href = '/generic_props/')('Generic Props Class `YourProps<T>`'),
    (BasicExample()
      ..id = 'we'
      ..onClick = allowInterop((e) => window.console.log(e))
      // Aria attributes are automatically converted to kebab-case!
      // Aria attributes are currently broken in DDC, but try using `webdev serve -r` and it works!
      ..aria.label = 'aria!'
      ..dataJsName = 'test'
      ..testBool = true
    )(
      'Woo!',
    ),
  );

  final root = ReactDOM.createRoot(querySelector('#content'));
  root.render(content);
}
