import 'package:reactor/reactor.dart';

import 'context.dart';

part 'app_provider.reactor.g.dart';

Factory<_AppProviderProps> AppProvider = _AppProvider;

@ReactorComponent()
AppProviderComponent(_AppProviderProps props, String placeholder, int myNum) {
  var counter = useState('Inital Context');
  return [
    (Dom.button()
      ..onClick = (event) {
        counter.set('Updated Context');
      })('Click me to update context!'),
    (SomeContext.Provider()..value = counter.value)(props.children)
  ];
}
