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

class ReactorPropsGenerator extends GeneratorForAnnotation<ReactorProps> {
  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    // Return a string representing the code to emit.
    return await createPropsFromElement(element, buildStep);
  }
}

class ReactorStateGenerator extends GeneratorForAnnotation<ReactorState> {
  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    // Return a string representing the code to emit.
    return await createStateFromElement(element, buildStep);
  }
}
