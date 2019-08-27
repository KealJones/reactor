@TestOn('browser')
import "dart:html";

import 'package:reactor/reactor.dart';
import 'package:reactor/src/core/react/hooks/use_state.dart';
import 'package:reactor/test.dart';

import "package:test/test.dart";

part 'reactor_test.reactor.g.dart';

@ReactorComponent() 
TestComponent(UiProps props) {
  var state = useState(1);
  return (Dom.button()..onClick = (_){ state.set(++state.value); })(state.value);
}

void main() {
  
  group('Reactor', (){
    enableTestMode(includeReactTestingLibrary: true);
    group('testing tests', (){
      test("1", () {
        print(TestingLibraryReact.render(_Test().$componentClass));
        
        expect(querySelector('#content').innerHtml, '<button>1</button>');
      });

      test("2", () {
        ReactDOM.render(_Test()(), querySelector('#content'));

        querySelector('button').click();

        expect(querySelector('#content').innerHtml, '<button>2</button>');
      });
    });
  });
}