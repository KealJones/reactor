// @JS()
// library playground;

// import 'dart:html';
// import 'dart:js_util';
// import 'package:js/js.dart';
// import 'package:reactor/reactor.dart';

// abstract class MyComponentPropsInterface extends Props {
//   bool? testBool;
// }

// MyComponentFunction([MyComponentProps? props]) {
//   return (Dom.div()..id="whatever")('Whatever: ${props?.testBool}');
// }

// class MyComponentProps extends Props implements MyComponentPropsInterface {}

// final Whatever = FC<MyComponentProps>(MyComponentFunction).r(MyComponentProps.new);

// extension FC<T extends Props> on Function {
//   T Function() r(T Function() propBuilder) {
//     final props = propBuilder()..$$component = allowInterop(this);
//     return () => props;
//   }
// }

// // extension<T extends Props> on Function {
// //   T
// // }

// main() {
//   window.console.log((Whatever()..testBool = true)(Dom.div()()));
//   var content = StrictMode()(
//     //re(Whatever,(WhateverProps()..testBool = true))
//     //(Whatever.r()..testBool = true)()//.build()

//     (Whatever()..testBool = true)()
//   );

//   final root = ReactDOM.createRoot(querySelector('#content'));
//   root.render(content);
// }
