import 'package:dart_dev/dart_dev.dart';

main(args) async {
  // Define the entry points for static analysis.
  config.analyze.entryPoints = ['lib/', 'test/', 'tool/'];

  // Configure whether or not the HTML coverage report should be generated.
  config.coverage.html = false;

  // Define the paths to include when running the
  // Dart formatter.
  config.format
    ..paths = ['lib/', 'test/', 'web/']
    ..lineLength = 120;

  // Define the location of your test suites.
  config.test
    ..unitTests = ['test/unit/']
    ..integrationTests = ['test/integration/']
    ..functionalTests = ['test/functional'];

  // Execute the dart_dev tooling.
  await dev(args);
}
