library deferred_component;

import 'package:reactor/reactor.dart';
import 'deferred_component.dart' deferred as deferred_component;

part 'deferred_wrapper.reactor.g.dart';

Factory<Props> DeferredWrapper = _DeferredWrapper;

class DeferredWrapperStateInterface {
  bool showDeferred;
  bool deferredLoaded;
}
class DeferredWrapperState extends State implements DeferredWrapperStateInterface{}
@ReactorComponent()
DeferredWrapperComponent(Props props) {
  var state = useState(DeferredWrapperState()..showDeferred = false..deferredLoaded = false);
  if (state.value.showDeferred == true && (state.value.deferredLoaded == false)) {
    deferred_component.loadLibrary().then((v){
      print(v);
      print('settingState');
      state.set(DeferredWrapperState()..showDeferred = true..deferredLoaded = true);
    });
  }
  if (state.value.deferredLoaded == true) {
    return deferred_component.DeferredC()();
  }
  
  return (Dom.button()..onClick = (e) { state.set(DeferredWrapperState()..deferredLoaded = false..showDeferred = true); })('Click Me to load deferred Component');
}