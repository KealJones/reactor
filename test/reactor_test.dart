@TestOn('browser')
import "dart:html";

import 'package:reactor/reactor.dart';
import 'package:reactor/test.dart';

import "package:test/test.dart";

part 'reactor_test.reactor.g.dart';

@ReactorComponent() 
TestComponent(UiProps props) {
  return 'Test';
}

void main() {
  enableTestMode();

  group('Reactor', (){
    test("test works", () {
      
      ReactDOM.render(_Test()(), querySelector('#content'));
      expect(querySelector('#content').innerHtml, 'Test');
    });
  });
}