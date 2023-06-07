// ignore_for_file: unnecessary_this

@JS()
library reactor.core.maps.props;
import 'dart:js_util';
import 'package:js/js.dart';
import 'package:reactor/src/core/maps/constants.dart';
import 'package:reactor/src/interop/events.dart';
import 'package:reactor/src/core/constants.dart';
import 'package:reactor/src/core/react.dart';


import 'dom_props.dart';
import 'ui_maps.dart';

@JS()
@anonymous
@staticInterop
class Props extends BaseReactProps {
  external factory Props();
}

@JS()
@anonymous
@staticInterop
class NoProps extends BaseReactProps {
  external factory NoProps();
}

@JS()
@anonymous
@staticInterop
class BaseReactProps extends UiMap {
  external factory BaseReactProps();
}

extension BasicReactProps on BaseReactProps {
  /// A key is a special string attribute you need to include when creating lists of elements.
  /// Keys help React identify which items have changed, are added, or are removed.
  /// Keys should be given to the elements inside the array to give the elements a stable identity.
  /// Keys only make sense in the context of the surrounding array.
  /// https://reactjs.org/docs/lists-and-keys.html#keys
  external String? key;

  /// Refs provide a way to access DOM nodes or React elements created in the render method.
  /// https://reactjs.org/docs/refs-and-the-dom.html
  external dynamic ref;

  external dynamic children;

  @JS(componentPrivatePropertyKey)
  external dynamic $component;

  ReactElement call([
    c0 = undefined,
    c1 = undefined,
    c2 = undefined,
    c3 = undefined,
    c4 = undefined,
    c5 = undefined,
    c6 = undefined,
    c7 = undefined,
    c8 = undefined,
    c9 = undefined,
    c10 = undefined,
    c11 = undefined,
    c12 = undefined,
    c13 = undefined,
    c14 = undefined,
    c15 = undefined,
    c16 = undefined,
    c17 = undefined,
    c18 = undefined,
    c19 = undefined,
    c20 = undefined,
    c21 = undefined,
    c22 = undefined,
    c23 = undefined,
    c24 = undefined,
    c25 = undefined,
    c26 = undefined,
    c27 = undefined,
    c28 = undefined,
    c29 = undefined,
    c30 = undefined,
    c31 = undefined,
    c32 = undefined,
    c33 = undefined,
    c34 = undefined,
    c35 = undefined,
    c36 = undefined,
    c37 = undefined,
    c38 = undefined,
    c39 = undefined,
    c40 = undefined,
    c41 = undefined,
    c42 = undefined,
    c43 = undefined,
    c44 = undefined,
    c45 = undefined,
    c46 = undefined,
    c47 = undefined,
    c48 = undefined,
    c49 = undefined,
    c50 = undefined,
    c51 = undefined,
    c52 = undefined,
    c53 = undefined,
    c54 = undefined,
    c55 = undefined,
    c56 = undefined,
    c57 = undefined,
    c58 = undefined,
    c59 = undefined,
    c60 = undefined,
    c61 = undefined,
    c62 = undefined,
    c63 = undefined,
    c64 = undefined,
    c65 = undefined,
    c66 = undefined,
    c67 = undefined,
    c68 = undefined,
    c69 = undefined,
    c70 = undefined,
    c71 = undefined,
    c72 = undefined,
    c73 = undefined,
    c74 = undefined,
    c75 = undefined,
    c76 = undefined,
    c77 = undefined,
    c78 = undefined,
    c79 = undefined,
    c80 = undefined,
    c81 = undefined,
    c82 = undefined,
    c83 = undefined,
    c84 = undefined,
    c85 = undefined,
    c86 = undefined,
    c87 = undefined,
    c88 = undefined,
    c89 = undefined,
    c90 = undefined,
    c91 = undefined,
    c92 = undefined,
    c93 = undefined,
    c94 = undefined,
    c95 = undefined,
    c96 = undefined,
    c97 = undefined,
    c98 = undefined,
    c99 = undefined,
    c100 = undefined,
  ]) {

    // Clone all props from this object into a new object so that it can be
    // cleaned for use with React.
    final cleanProps = UiMap()..addAllFromJs(this);

    // Remove the private component prop from the props
    if (hasProperty(cleanProps, componentPrivatePropertyKey)) {
      cleanProps.remove(componentPrivatePropertyKey);
    }

    // If any sub aria props were set merge them into the main props object
    // and remove the hidden object.
    if (hasProperty(cleanProps, ariaPrivatePropertyKey)) {
      cleanProps
        ..addAll(getProperty(cleanProps, ariaPrivatePropertyKey))
        ..remove(ariaPrivatePropertyKey);
    }

    // If any sub dom props were set merge them into the main props object
    // and remove the hidden object.
    if (hasProperty(cleanProps, domPrivatePropertyKey)) {
      cleanProps
        ..addAll(getProperty(cleanProps, domPrivatePropertyKey))
        ..remove(domPrivatePropertyKey);
    }

    // wrap all function props with allowInterop for use in JS
    cleanProps.updateAll((key, value) => value is Function ? allowInterop(value) : value);

    // return the ReactElement
    return createElement(
      this.$component,
      cleanProps,
      [ c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90, c91, c92, c93, c94, c95, c96, c97, c98, c99, c100 ].takeWhile((child) => !identical(child, undefined)).toList(),
    );
  }
}

extension UbiquitousDomProps on Props {
  @JS(ariaPrivatePropertyKey)
  external AriaProps? $aria;

  /// A view into this map that can be used to access `aria-` props, for convenience.
  ///
  /// Example:
  ///
  ///     (Button()
  ///       ..aria.controls = 'my_popover'
  ///     )('Open popover')
  AriaProps get aria {
    this.$aria ??= AriaProps();
    return this.$aria!;
  }

  @JS(domPrivatePropertyKey)
  external DomProps? $dom;

  /// A view into this map that can be used to access DOM props, for convenience.
  ///
  /// Example:
  ///
  ///     (Tab()
  ///       ..dom.draggable = true
  ///     )('Untitled Document')
  DomProps get dom {
    this.$dom ??= DomProps();
    return this.$dom!;
  }

  /// Whether the element if focusable.
  /// Must be a valid integer or String of valid integer.
  external dynamic tabIndex;

  /// Unique identifier.
  /// Must be unique amongst all the ids, and contain at least one character.
  external String? id;

  /// Represents advisory information about the element.
  external String? title;

  /// An inline CSS style for the element.
  ///
  ///     ..style = {
  ///       'width': '${state.progress * 100}%',
  ///       'display': state.isHidden ? 'none' : '',
  ///     }
  ///
  /// See: <https://facebook.github.io/react/tips/inline-styles.html>
  external Map<String, dynamic>? style;

  /// Callback for when the user copies the content of an element
  external ClipboardEventCallback? onCopy;

  /// Callback for when the user cuts the content of an element
  external ClipboardEventCallback? onCut;

  /// Callback for when the user pastes some content in an element
  external ClipboardEventCallback? onPaste;

  /// Callback for when the user is pressing a key
  external KeyboardEventCallback? onKeyDown;

  /// Callback for when the user presses a key
  external KeyboardEventCallback? onKeyPress;

  /// Callback for when the user releases a key
  external KeyboardEventCallback? onKeyUp;

  /// Callback for when an element gets focus
  external FocusEventCallback? onFocus;

  /// Callback for when an element loses focus
  external FocusEventCallback? onBlur;

  /// Callback for  when the content of a form element, the selection, or the checked state have changed (for <input>,
  /// <keygen>, <select>, and <textarea>)
  external FormEventCallback? onChange;

  /// Callback for when an element gets user input
  external FormEventCallback? onInput;

  /// Callback for when a form is submitted
  external FormEventCallback? onSubmit;

  /// Callback for when a form is reset
  external FormEventCallback? onReset;

  /// Callback for when the user clicks on an element
  external MouseEventCallback? onClick;

  /// Callback for when the user right-clicks on an element to open a context menu
  external MouseEventCallback? onContextMenu;

  /// Callback for when the user double-clicks on an element
  external MouseEventCallback? onDoubleClick;

  /// Callback for when an element is being dragged
  external MouseEventCallback? onDrag;

  /// Callback for when the user has finished dragging an element
  external MouseEventCallback? onDragEnd;

  /// Callback for when the dragged element enters the drop target
  external MouseEventCallback? onDragEnter;

  /// Callback for when the dragged element exits the drop target
  external MouseEventCallback? onDragExit;

  /// Callback for when the dragged element leaves the drop target
  external MouseEventCallback? onDragLeave;

  /// Callback for when the dragged element is over the drop target
  external MouseEventCallback? onDragOver;

  /// Callback for when the user starts to drag an element
  external MouseEventCallback? onDragStart;

  /// Callback for when the dragged element is dropped on the drop target
  external MouseEventCallback? onDrop;

  /// Callback for when the user presses a mouse button over an element
  external MouseEventCallback? onMouseDown;

  /// Callback for when the pointer is moved onto an element
  external MouseEventCallback? onMouseEnter;

  /// Callback for when the pointer is moved out of an element
  external MouseEventCallback? onMouseLeave;

  /// Callback for when the pointer is moving while it is over an element
  external MouseEventCallback? onMouseMove;

  /// Callback for when a user moves the mouse pointer out of an element, or out of one of its children
  external MouseEventCallback? onMouseOut;

  /// Callback for when the pointer is moved onto an element, or onto one of its children
  external MouseEventCallback? onMouseOver;

  /// Callback for when a user releases a mouse button over an element
  external MouseEventCallback? onMouseUp;

  /// Callback for when the pointing device is interrupted
  external PointerEventCallback? onPointerCancel;

  /// Callback for when the pointer becomes active over an element
  external PointerEventCallback? onPointerDown;

  /// Callback for when the pointer is moved onto an element
  external PointerEventCallback? onPointerEnter;

  /// Callback for when the pointer is moved out of an element
  external PointerEventCallback? onPointerLeave;

  /// Callback for when the pointer is moving while it is over an element
  external PointerEventCallback? onPointerMove;

  /// Callback for when the pointer is moved onto an element, or onto one of its children
  external PointerEventCallback? onPointerOver;

  /// Callback for when the pointer is moved out of an element, or out of one of its children
  external PointerEventCallback? onPointerOut;

  /// Callback for when the pointer becomes inactive over an element
  external PointerEventCallback? onPointerUp;

  /// Callback for when the touch is interrupted
  external TouchEventCallback? onTouchCancel;

  /// Callback for when a finger is removed from a touch screen
  external TouchEventCallback? onTouchEnd;

  /// Callback for when a finger is dragged across the screen
  external TouchEventCallback? onTouchMove;

  /// Callback for when a finger is placed on a touch screen
  external TouchEventCallback? onTouchStart;

  /// Callback for when an element's scrollbar is being scrolled
  external UIEventCallback? onScroll;

  /// Callback for when the mouse wheel rolls up or down over an element
  external WheelEventCallback? onWheel;
}
