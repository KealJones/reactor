@TestOn('browser')
import 'dart:html';

import 'package:reactor/test.dart';

import 'package:test/test.dart';

import './test_fixtures.dart';

void main() {
  group('Reactor', () {
    enableTestMode(includeReactTestingLibrary: true);
    group('testing tests', () {
      test("1", () {
        window.console.log(document.body.innerHtml);

        var test = TestingLibraryReact.render(Test()());

        test.getByText('Counter: 1').click();

        expect(test.getByText('Counter: 2'), isNotNull);
      });

      test("2", () {
        var test = TestingLibraryReact.render(Test()());

        test.getByText('Counter: 1')..click()..click()..click();

        expect(test.getByText('Counter: 4'), isNotNull);
      });
    });
  });
}
