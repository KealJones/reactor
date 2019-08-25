import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:reactor/src/core/annotations.dart';
import 'package:source_gen/source_gen.dart';

import './component_generator.dart';

class ReactorComponentGenerator extends GeneratorForAnnotation<ReactorComponent> {
  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    // Return a string representing the code to emit.
    return await createComponentFromElement(element, buildStep);
  }
}

const _inputExtension = '_test.dart';
const _outputExtension = '_test.html';

/// Returns the (optional) user-provided HTML file to use as an input.
///
/// For example, for `test/foo_test.dart`, we look for `test/foo_test.html`.
AssetId _customHtmlId(AssetId test) => test.changeExtension('.html');

/// Generates a `*_test.html` for every file in `test/**/*_test.dart`.
///
/// This is normally used in order to use Chrome (or another browser's)
/// debugging tools (such as setting breakpoints) while running a test suite.
class ReactorTestHtmlBuilder implements Builder {
  /// Generates a `*_test.html` for the provided `*_test.dart` file.
  static Future<void> _generateHtml(
    BuildStep buildStep,
    AssetId dartTest,
  ) async {
    final customHtmlId = _customHtmlId(dartTest);
    String testHtml;
    if (await buildStep.canRead(customHtmlId)) {
      return null;
    } else {
      testHtml = _createHtml(dartTest.pathSegments.last);
    }
    return buildStep.writeAsString(_customHtmlId(dartTest), testHtml);
  }

  static String _createHtml(String dartFilePath) => ''
      '<html>\n'
      '  <head>\n'
      '    <script src="packages/reactor/js/react.development.js"></script>\n'
      '    <script src="packages/reactor/js/react-dom.development.js"></script>\n'
      '    <link rel="x-dart-test" href="$dartFilePath">\n'
      '    <script src="packages/test/dart.js"></script>\n'
      '  </head>\n'
      '  <body>\n'
      '    <div id="content"></div>\n'
      '  </body>\n'
      '</html>\n';

  const ReactorTestHtmlBuilder();

  @override
  final buildExtensions = const {
    _inputExtension: [_outputExtension],
  };

  @override
  Future<void> build(BuildStep buildStep) {
    return _generateHtml(buildStep, buildStep.inputId);
  }
}