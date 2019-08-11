import 'package:reactor/reactor.dart';

part 'simple.reactor.g.dart';

var Simple = _Simple;

@Component()
class SimpleComponent extends UiComponent {
  @override
  render() {
    return 'Its simple.';
  }
} 