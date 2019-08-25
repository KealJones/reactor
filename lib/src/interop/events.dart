@JS()
library reactor.interop.events;

import 'dart:html';

import 'package:js/js.dart';

typedef DomEventCallback(SyntheticEvent event);
typedef ClipboardEventCallback(SyntheticEvent event);
typedef KeyboardEventCallback(SyntheticEvent event);
typedef FocusEventCallback(SyntheticEvent event);
typedef FormEventCallback(SyntheticEvent event);
typedef PointerEventCallback(SyntheticEvent event);
typedef MouseEventCallback(SyntheticMouseEvent event);
typedef TouchEventCallback(SyntheticEvent event);
typedef UIEventCallback(SyntheticEvent event);
typedef WheelEventCallback(SyntheticEvent event);

@JS()
@anonymous
class SyntheticEvent {
  external bool get bubbles;
  external bool get cancelable;
  external get currentTarget;
  external bool get defaultPrevented;
  external num get eventPhase;
  external bool get isTrusted;
  external get nativeEvent;
  external get target;
  external num get timeStamp;
  external String get type;

  external void stopPropagation();
  external void preventDefault();

  external void persist();

  external factory SyntheticEvent({
    // SyntheticEvent
    bool bubbles,
    bool cancelable,
    dynamic currentTarget,
    bool efaultPrevented,
    num eventPhase,
    bool isTrusted,
    dynamic nativeEvent,
    dynamic target,
    num timeStamp,
    String type,
    stopPropagation(),
    preventDefault(),
    persist(),
  });
}

@JS()
@anonymous
class SyntheticClipboardEvent {
  external get clipboardData;

  // SyntheticEvent
  external bool get bubbles;
  external bool get cancelable;
  external get currentTarget;
  external bool get defaultPrevented;
  external num get eventPhase;
  external bool get isTrusted;
  external get nativeEvent;
  external get target;
  external num get timeStamp;
  external String get type;

  external void stopPropagation();
  external void preventDefault();

  external void persist();
}

@JS()
@anonymous
class SyntheticKeyboardEvent {
  external bool get altKey;
  external String get char;
  external bool get ctrlKey;
  external String get locale;
  external num get location;
  external String get key;
  external bool get metaKey;
  external bool get repeat;
  external bool get shiftKey;
  external num get keyCode;
  external num get charCode;

  // SyntheticEvent
  external bool get bubbles;
  external bool get cancelable;
  external get currentTarget;
  external bool get defaultPrevented;
  external num get eventPhase;
  external bool get isTrusted;
  external get nativeEvent;
  external get target;
  external num get timeStamp;
  external String get type;

  external void stopPropagation();
  external void preventDefault();

  external void persist();
}

@JS()
@anonymous
class SyntheticFocusEvent {
  external EventTarget get relatedTarget;

  // SyntheticEvent
  external bool get bubbles;
  external bool get cancelable;
  external get currentTarget;
  external bool get defaultPrevented;
  external num get eventPhase;
  external bool get isTrusted;
  external get nativeEvent;
  external get target;
  external num get timeStamp;
  external String get type;

  external void stopPropagation();
  external void preventDefault();

  external void persist();
}

@JS()
@anonymous
class SyntheticFormEvent {
  // SyntheticEvent
  external bool get bubbles;
  external bool get cancelable;
  external get currentTarget;
  external bool get defaultPrevented;
  external num get eventPhase;
  external bool get isTrusted;
  external get nativeEvent;
  external get target;
  external num get timeStamp;
  external String get type;

  external void stopPropagation();
  external void preventDefault();

  external void persist();
}

@JS()
@anonymous
class SyntheticDataTransfer {
  external String get dropEffect;
  external String get effectAllowed;
  external List<File> get files;
  external List<String> get types;
}

@JS()
@anonymous
class SyntheticMouseEvent {
  external bool get altKey;
  external num get button;
  external num get buttons;
  external num get clientX;
  external num get clientY;
  external bool get ctrlKey;
  external SyntheticDataTransfer get dataTransfer;
  external bool get metaKey;
  external num get pageX;
  external num get pageY;
  external EventTarget get relatedTarget;
  external num get screenX;
  external num get screenY;
  external bool get shiftKey;

  // SyntheticEvent
  external bool get bubbles;
  external bool get cancelable;
  external get currentTarget;
  external bool get defaultPrevented;
  external num get eventPhase;
  external bool get isTrusted;
  external get nativeEvent;
  external get target;
  external num get timeStamp;
  external String get type;

  external void stopPropagation();
  external void preventDefault();

  external void persist();

  external factory SyntheticMouseEvent({
    bool altKey,
    num button,
    num buttons,
    num clientX,
    num clientY,
    bool ctrlKey,
    SyntheticDataTransfer dataTransfer,
    bool metaKey,
    num pageX,
    num pageY,
    EventTarget relatedTarget,
    num screenX,
    num screenY,
    bool shiftKey,

    // SyntheticEvent
    bool bubbles,
    bool cancelable,
    dynamic currentTarget,
    bool efaultPrevented,
    num eventPhase,
    bool isTrusted,
    dynamic nativeEvent,
    dynamic target,
    num timeStamp,
    String type,
    stopPropagation(),
    preventDefault(),
    persist(),
  });
}

@JS()
@anonymous
class SyntheticPointerEvent {
  external num get pointerId;
  external num get width;
  external num get height;
  external num get pressure;
  external num get tangentialPressure;
  external num get tiltX;
  external num get tiltY;
  external num get twist;
  external String get pointerType;
  external bool get isPrimary;

  // SyntheticEvent
  external bool get bubbles;
  external bool get cancelable;
  external get currentTarget;
  external bool get defaultPrevented;
  external num get eventPhase;
  external bool get isTrusted;
  external get nativeEvent;
  external get target;
  external num get timeStamp;
  external String get type;

  external void stopPropagation();
  external void preventDefault();

  external void persist();
}

@JS()
@anonymous
class SyntheticTouchEvent {
  external bool get altKey;
  external TouchList get changedTouches;
  external bool get ctrlKey;
  external bool get metaKey;
  external bool get shiftKey;
  external TouchList get targetTouches;
  external TouchList get touches;

  // SyntheticEvent
  external bool get bubbles;
  external bool get cancelable;
  external get currentTarget;
  external bool get defaultPrevented;
  external num get eventPhase;
  external bool get isTrusted;
  external get nativeEvent;
  external get target;
  external num get timeStamp;
  external String get type;

  external void stopPropagation();
  external void preventDefault();

  external void persist();
}

@JS()
@anonymous
class SyntheticUIEvent {
  external num get detail;
  external get view;

  // SyntheticEvent
  external bool get bubbles;
  external bool get cancelable;
  external get currentTarget;
  external bool get defaultPrevented;
  external num get eventPhase;
  external bool get isTrusted;
  external get nativeEvent;
  external get target;
  external num get timeStamp;
  external String get type;

  external void stopPropagation();
  external void preventDefault();

  external void persist();
}

@JS()
@anonymous
class SyntheticWheelEvent {
  external num get deltaX;
  external num get deltaMode;
  external num get deltaY;
  external num get deltaZ;

  // SyntheticEvent
  external bool get bubbles;
  external bool get cancelable;
  external get currentTarget;
  external bool get defaultPrevented;
  external num get eventPhase;
  external bool get isTrusted;
  external get nativeEvent;
  external get target;
  external num get timeStamp;
  external String get type;

  external void stopPropagation();
  external void preventDefault();

  external void persist();
}
