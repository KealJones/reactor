@TestOn('browser')
import "dart:html";

import 'package:reactor/reactor.dart';
import 'package:reactor/test.dart';

import "package:test/test.dart";

void main() {
  enableTestMode();

  group('Reactor', (){
    test("test works", () {
      ReactDOM.render(Dom.b()('test'), querySelector('#content'));
      expect(querySelector('#content').innerHtml, '<b>test</b>');
    });
  });
}