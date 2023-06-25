@JS()
library reactor.core.react.api.context;


import 'package:js/js.dart';
import 'package:reactor/reactor.dart';
import 'package:reactor/src/core/typedefs.dart';
import 'package:reactor/src/interop/react.dart' as reactjs;

extension ProviderPropsExt on ProviderProps {
  external dynamic value;
}

@JS()
@anonymous
@staticInterop
class ProviderProps<T> extends Props {
  external factory ProviderProps();
}

@JS()
@anonymous
@staticInterop
class ConsumerProps<T> extends Props {
  external factory ConsumerProps();
}

extension ConsumerPropsExt on ConsumerProps {
  external void Function(dynamic value) children;
}

Context<T> createContext<T>([T? defaultValue, reactjs.ObservedBitsFn? calculateChangedBits]) {
  reactjs.Context jsContext = reactjs.React.createContext(defaultValue, calculateChangedBits);
  ProviderProps<T> Provider([Map? backingMap]) {
    return ProviderProps<T>()

      ..$component = jsContext.Provider;
  }

  Factory<ProviderProps<T>> ProviderFactory = Provider;

  ConsumerProps<T> Consumer([Map? backingMap]) {
    return ConsumerProps<T>()
      ..$component = jsContext.Consumer;
  }

  Factory<ConsumerProps<T>> ConsumerFactory = Consumer;

  return Context(ProviderFactory, ConsumerFactory, jsContext);
}

class Context<T> {
  Factory<ProviderProps<T>> Provider;
  Factory<ConsumerProps<T>> Consumer;
  dynamic jsThis;

  // ignore: avoid_types_as_parameter_names
  Context(this.Provider, this.Consumer, this.jsThis);
}
