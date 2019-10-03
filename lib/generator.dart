library reactor.generator;

import 'package:build/build.dart';
import 'package:reactor/src/generator/reactor_generator.dart';
import 'package:source_gen/source_gen.dart';
import 'package:dart_style/dart_style.dart';

import './src/generator/reactor_generator.dart';

Builder reactorGenerator(BuilderOptions options) => PartBuilder(
      [ReactorComponentGenerator()],
      '.reactor.g.dart',
      formatOutput: DartFormatter(pageWidth: 120).format,
    );
