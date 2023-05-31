@JS()
library web;

import 'dart:html';
import 'package:js/js.dart';
import 'package:reactor/reactor.dart';

@JS()
@anonymous
@staticInterop
class BarProps extends Props {
  external factory BarProps({bool isBarProps});

  // A helper factory constructor to allow having default values since external factory default values don't do anything...
  // see: https://github.com/dart-lang/sdk/issues/33395
  factory BarProps.create() => BarProps(isBarProps: true);
}

extension BarPropsExt on BarProps {
  external bool? isBarProps;
}

@JS()
@anonymous
@staticInterop
class BarBazProps extends Props {
  external factory BarBazProps({bool isBarBazProps});

  // A helper factory constructor to allow having default values since external factory default values don't do anything...
  // see: https://github.com/dart-lang/sdk/issues/33395
  factory BarBazProps.create() => BarBazProps(isBarBazProps: true);
}

extension BarBazPropsExt on BarBazProps {
  external bool? isBarBazProps;
}

// You can use the same function component with different props classes!
Foo(Props props) {
  // These `props is` checks are all a waste of time, all JS types are equal to Darts type system,
  // they are here because the `props is` checks allow access to the JS properties without analysis errors.
  if (props is BarBazProps && props.isBarBazProps != null) {
    return 'Foo with BarBazProps!';
  }
  if (props is BarProps && props.isBarProps != null) {
    return 'Foo with BarProps!';
  }
  return 'Foo with generic props!';
}

// You just change the propsBuilder return type when you call `toFactory`!
final FooBar = Foo.toFactory(
  () => BarProps.create(),
  // Would show in the dev tools as `Foo` since that is the function's name,
  // but we can explicitly change it here.
  name: 'FooBar',
);

final FooBarBaz = Foo.toFactory(() => BarBazProps.create(), name: 'FooBarBaz');

final FooGeneric = Foo.toFactory(() => Props());

main() {
  var content = StrictMode()(
    FooBar()(),
    Dom.br()(),
    FooBarBaz()(),
    Dom.br()(),
    FooGeneric()(),
  );

  final root = ReactDOM.createRoot(querySelector('#content'));
  root.render(content);
}
