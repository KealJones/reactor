import 'dart:async';
import 'dart:html';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:reactor/reactor.dart';
import 'package:reactor/src/interop/interop.dart' show LazyComponent, React, futureToPromise;

import 'app_provider.dart';

import 'function.dart';
import 'hello.dart';
import 'simple.dart';
import 'tic_tac_toe.dart';

import 'deferred_component.dart' deferred as deferred_component;

Factory lazy<T extends UiProps>(Future Function() loadLib, [Factory<T> Function() whatToReturn]) {
  return ([Map props]) {
    return Props(props)..$componentClass =
      React.lazy(
        allowInterop(
          () => futureToPromise(
            loadLib().then((v) {
                return jsify({'default': whatToReturn()(props).$componentClass});
              }
            )
          )
        )
      );
  };
}

var lazyTest = lazy(() => deferred_component.loadLibrary(), () => deferred_component.DeferredC);

main() {
  var content = (Suspense()..fallback = Dom.div()('Loading...'))(
    lazyTest()(Dom.div()('child'))
  );
  ReactDOM.render(content, querySelector('#content'));
}
/*
      Fragment()(
        (Dom.div()..style = sharedStyleMap)(
          (Hello()
            ..dartVal = ExampleDartValue(dur: Duration(seconds: 10))
            ..aria.autocomplete = false
            ..key = 'hello')(
            (Dom.span()..key = 'test')('Test'),
          ),
          Simple()(),
          (Functional()
            ..placeholder = 'I am a functional component'
            ..id = 'omg')(),
          (Functional2()
            ..placeholder = 'I am a functional2 component'
            ..id = 'test2')(),
        ),
        Dom.hr()(),
        (Dom.div()..style = sharedStyleMap)(
          Game()(),
        ),
        HookTest()(),
      ),
    ),
  );


}
*/
