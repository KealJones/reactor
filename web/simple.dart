import 'package:reactor/reactor.dart';

part 'simple.reactor.g.dart';

var Simple = _Simple;

@ReactorComponent()
class SimpleComponent extends Component {
  @override
  render() {
    return 'Its simple.';
  }
}
