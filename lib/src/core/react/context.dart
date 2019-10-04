import 'package:reactor/reactor.dart';
import 'package:reactor/src/interop/react.dart' as reactjs;

class ProviderPropsInterface<T> {
  T value;
}

class ProviderProps<T> extends Props implements ProviderPropsInterface<T> {}

class ConsumerProps<T> extends UiProps
    with UbiquitousDomProps
    implements ReactPropsInterface, UiConsumerComponentInterface<T> {
  ConsumerProps([Map backingMap]) {
    $backingMap = backingMap ?? $backingMap;
  }

  covariant dynamic Function(dynamic) children;
}

Context<T> createContext<T>([T defaultValue, Function calculateChangedBits]) {
  reactjs.Context jsContext = reactjs.React.createContext(defaultValue, calculateChangedBits);
  ProviderProps<T> Provider([Map backingMap]) {
    return ProviderProps<T>()
      ..$backingMap = JsBackedMap.from(backingMap ?? {})
      ..$componentClass = jsContext.Provider;
  }

  Factory<ProviderProps<T>> ProviderFactory = Provider;

  ConsumerProps<T> Consumer([Map backingMap]) {
    return ConsumerProps<T>()
      ..$backingMap = JsBackedMap.from(backingMap ?? {})
      ..$componentClass = jsContext.Consumer;
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
