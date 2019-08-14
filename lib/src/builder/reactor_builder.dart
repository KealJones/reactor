// // Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// // for details. All rights reserved. Use of this source code is governed by a
// // BSD-style license that can be found in the LICENSE file.

import 'dart:async';
// import 'dart:mirrors';


import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:reactor/src/global/annotations.dart';
import 'package:source_gen/source_gen.dart';

import 'component_generator.dart';


class ReactorComponentBuilder extends GeneratorForAnnotation<Component> {
  @override
  Future<String> generateForAnnotatedElement(
      Element element,
      ConstantReader annotation,
      BuildStep buildStep) async {

    // Return a string representing the code to emit.
    return await createComponentFromElement(element, buildStep);
  }

}

// class ReactorPropsBuilder extends GeneratorForAnnotation<Props> {
//   @override
//   Future<String> generateForAnnotatedElement(
//       Element element,
//       ConstantReader annotation,
//       BuildStep buildStep) async {

//     // Return a string representing the code to emit.
//     return createPropsFromElement(element);
//   }

// }

// class ReactorPropsBuilder extends GeneratorForAnnotation<Props> {
//   @override
//   Future<String> generateForAnnotatedElement(
//       Element element,
//       ConstantReader annotation,
//       BuildStep buildStep) async {

//     // Return a string representing the code to emit.
//     return createPropsFromElement(element);
//   }

// }

// class ReactorStateBuilder extends GeneratorForAnnotation<State> {
//   @override
//   Future<String> generateForAnnotatedElement(
//       Element element,
//       ConstantReader annotation,
//       BuildStep buildStep) async {

//     // Return a string representing the code to emit.
//     return createStateFromElement(element);
//   }

// }

// /// Copy contents of a `txt` files into `name.txt.copy`.
// ///
// /// A header row is added pointing to the input file name.
// class CopyBuilder implements Builder {
//   @override
//   Future build(BuildStep buildStep) async {
//     final source = await buildStep.readAsString(buildStep.inputId);

//     if (!hasComponentDeclarations(source)){
//       return;
//     }
//      // More stuff we dont want to spend time on...
//     final libraryUnit = _tryParseCompilationUnit(source, buildStep.inputId);
//     if (libraryUnit == null) {
//       return;
//     }
//     if (isPart(libraryUnit)) {
//       return;
//     }

//     // Each [buildStep] has a single input.
//     var inputId = buildStep.inputId;
//   var props;
//     // Create a new target [AssetId] based on the old one.
//     var contents = '''@JS()
// part of './hello_component.dart';

// // Generated State
// @JS()
// @anonymous
// class GeneratedHelloState extends HelloState {
//   external factory GeneratedHelloState({bool initalState});
// }

// // Generated Props
// @JS()
// @anonymous
// class GeneratedHelloProps extends HelloProps {
//   external factory GeneratedHelloProps({String toWhat, ExampleDartValue dartVal});
// }

// // Generated Component
// //ignore: non_constant_identifier_names
// GeneratedHelloComponent([GeneratedHelloProps props]) {
//   final reactC = ReactComponent<GeneratedHelloProps, GeneratedHelloState>(props);

//   reactC
//     ..state = (GeneratedHelloState()..initialState = true)
//     ..name = 'HelloComponent'
//     ..displayName =' HelloComponent'
//     ..componentDidMount = () async {
//         print('componentDidMount was called...');
//         await Future.delayed(props.dartVal.dur);
//         print('componentDidMount called 10 seconds later...');
//         print(reactC.state.initialState);
//         reactC.setState(GeneratedHelloState()..initialState = false);
//       }
//     ..componentDidUpdate = ([prevProps, prevState, snapshot]) {
//       print('componentDidUpdate');
//         print(reactC.state.initialState);
//       }
//     ..render = () {
//         return ['Hello, \${props.children.single}!'];
//       };
//   return reactC;
// }

// // Generated Factory
// class Hello extends HelloProps {
//   GeneratedHelloProps props;
//   ReactElement call([List children]) {
//     props = GeneratedHelloProps(dartVal: dartVal);
//     return React.createElement(GeneratedHelloComponent, props, children);
//   }
// }
//     ''';

//     var copy = buildStep.inputId.changeExtension('.reactor.g.dart');

//     // Write out the new asset.
//     await buildStep.writeAsString(copy, '$contents');
//   }

//   @override
//   final buildExtensions = const {
//     ".dart": [".reactor.g.dart"]
//   };
// }

// /// Adds `generated.css` to the `web` directory.
// // class CssBuilder implements Builder {
// //   @override
// //   Future build(BuildStep buildStep) async {
// //     await buildStep.writeAsString(
// //         AssetId(buildStep.inputId.package, 'web/generated.css'),
// //         _cssContent(buildStep.inputId));
// //   }

// //   @override
// //   final buildExtensions = const {
// //     r'$web$': ['generated.css']
// //   };

// //   static String _cssContent(AssetId inputId) => '''
// // /*
// // Generated at: ${DateTime.now()}
// //      AssetId: $inputId
// // */
// // pre {
// //   font-size: 200%;
// // }''';
// // }

// /// For a source `dart` file, generate `file.dart.info.json` containing
// /// information about the
// class ResolvingBuilder implements Builder {
//   @override
//   Future build(BuildStep buildStep) async {
//     final source = await buildStep.readAsString(buildStep.inputId);

//     // We only want to work on components for this shit.
//     if (!hasComponentDeclarations(source)){
//       return;
//     }

//     // More stuff we dont want to spend time on...
//     final libraryUnit = _tryParseCompilationUnit(source, buildStep.inputId);
//     if (libraryUnit == null) {
//       return;
//     }
//     if (isPart(libraryUnit)) {
//       return;
//     }
//     print(libraryUnit);

//     // Get the `LibraryElement` for the primary input.
//     //var entryLib = await buildStep.inputLibrary;

//     var info = buildStep.inputId.changeExtension('.reactor.g.dart');

//     await buildStep.writeAsString(info, source);
//   }

//   @override
//   final buildExtensions = const {
//     '.dart': ['.reactor.g.dart']
//   };




// }

// CompilationUnit _tryParseCompilationUnit(String source, AssetId id) {
//     try {
//       return parseCompilationUnit(
//         source,
//         name: id.path,
//         suppressErrors: false,
//         parseFunctionBodies: true);
//     } catch (error, stackTrace) {
//       log.severe('There was an error parsing the compilation unit for file: $id');
//       log.fine(error);
//       log.fine(stackTrace);
//       return null;
//     }
//   }
//   final String key_component         = getName(Component);

//   final RegExp key_component_annotation = new RegExp(
//       r'@(?:' +
//       [
//         key_component,
//         // Leaving space for others
//       ].join('|').replaceAll(r'$', r'\$') +
//       r')',
//       caseSensitive: true
//   );

//   bool hasComponentDeclarations(String source) {
//     return key_component_annotation.hasMatch(source);
//   }

// Iterable<Element> allElements(LibraryElement element) sync* {
//   for (var cu in element.units) {
//     yield* cu.functionTypeAliases;
//     yield* cu.functions;
//     yield* cu.mixins;
//     yield* cu.topLevelVariables;
//     yield* cu.types;
//   }
// }
// bool isPart(CompilationUnit unit) =>
//     unit.directives.any((directive) => directive is PartOfDirective);

// String getName(Type type) {
//   return MirrorSystem.getName(reflectType(type).simpleName);
// }
