@JS()
library reactor.interop.js;

import 'package:js/js.dart';

/// Javascript Interop Helpers

@JS('Function')
external JsNoArgFunction(String functionBody);

@JS('Function')
external Js1ArgFunction(arg1, String functionBody);

@JS('Function')
external Js2ArgFunction(arg1, arg2, String functionBody);

@JS('Function')
external Js3ArgFunction(arg1, arg2, arg3, String functionBody);

@JS('Object')
class JsObject {
  external static void defineProperty(dynamic o, String property, DefinePropertyValue value);
  external static void assign(JsMap target, JsMap source, [JsMap source2, JsMap source3]);
  external static Function([String arg1Name, String arg2Name, String arg3Name, String functionBody]);
  external static List<dynamic> keys(JsMap object);
  external static List<dynamic> values(JsMap object);
}

@JS('Reflect')
abstract class Reflect {
  external static bool deleteProperty(JsMap target, dynamic propertyKey);
}

@JS('TestingLibraryReact')
class TestingLibraryReact {
  external act(callback);
  external bindElementToQueriesgetQueriesForElement(element, queries);
  external buildQueriesbuildQueries(queryAllBy, getMultipleError, getMissingError);
  external cleanupcleanup();
  external configureconfigure(newConfig);
  external CreateEvent get createEvent;
  external findAllByAltText(container, text, options, waitForElementOptions);
  external findAllByDisplayValue(container, text, options, waitForElementOptions);
  external findAllByLabelText(container, text, options, waitForElementOptions);
  external findAllByPlaceholderText(container, text, options, waitForElementOptions);
  external findAllByRole(container, text, options, waitForElementOptions);
  external findAllByTestId(container, text, options, waitForElementOptions);
  external findAllByText(container, text, options, waitForElementOptions);
  external findAllByTitle(container, text, options, waitForElementOptions);
  external findByAltText(container, text, options, waitForElementOptions);
  external findByDisplayValue(container, text, options, waitForElementOptions);
  external findByLabelText(container, text, options, waitForElementOptions);
  external findByPlaceholderText(container, text, options, waitForElementOptions);
  external findByRole(container, text, options, waitForElementOptions);
  external findByTestId(container, text, options, waitForElementOptions);
  external findByText(container, text, options, waitForElementOptions);
  external findByTitle(container, text, options, waitForElementOptions);
  external fireEventfireEvent$1();
  external getAllByAltText(container);
  external getAllByDisplayValue(container);
  external getAllByLabelTextgetAllByLabelText(container, text);
  external getAllByPlaceholderText(container);
  external getAllByRole(container);
  external getAllByTestId(container);
  external getAllByText(container);
  external getAllByTitle(container);
  external getByAltText(container);
  external getByDisplayValue(container);
  external getByLabelText(container);
  external getByPlaceholderText(container);
  external getByRole(container);
  external getByTestId(container);
  external getByText(container);
  external getByTitle(container);
  external getDefaultNormalizer(_temp);
  external getElementError(message, container);
  external getMultipleElementsFoundError(message, container);
  external getNodeTextgetNodeText(node);
  external getQueriesForElement(element, queries);
  external getRolesgetRoles(container);
  external logDOM();
  external logRoles(dom);
  external makeFindQuery(getter);
  external makeGetAllQuery(allQuery, getMissingError);
  external makeSingleQuery(allQuery, getMultipleError);
  external prettyDOMprettyDOM(dom, maxLength, options);
  external Queries get queries;
  external queryAllByAltText(container, alt, _temp);
  external queryAllByAttribute(attribute, container, text, _temp);
  external queryAllByDisplayValue(container, value, _temp);
  external queryAllByLabelText(container, text, _temp2);
  external queryAllByPlaceholderText();
  external queryAllByRole(container, role, _temp);
  external queryAllByTestId();
  external queryAllByText(container, text, _temp);
  external queryAllByTitle(container, text, _temp);
  external queryByAltText(container);
  external queryByAttribute(attribute, container, text);
  external queryByDisplayValue(container);
  external queryByLabelText(container);
  external queryByPlaceholderText(container);
  external queryByRole(container);
  external queryByTestId(container);
  external queryByText(container);
  external queryByTitle(container);
  external QueryHelpers get queryHelpers;
  external renderrender(ui, _temp);
  external waitwaitWrapper();
  external waitForDomChangewaitForDomChangeWrapper();
  external waitForElementwaitForElementWrapper();
  external waitForElementToBeRemovedwaitForElementToBeRemovedWrapper();
  external withingetQueriesForElement(element, queries);
}
@JS('TestingLibraryReact.queries')
class Queries {
  external findAllByAltText(container, text, options, waitForElementOptions);
  external findAllByDisplayValue(container, text, options, waitForElementOptions);
  external findAllByLabelText(container, text, options, waitForElementOptions);
  external findAllByPlaceholderText(container, text, options, waitForElementOptions);
  external findAllByRole(container, text, options, waitForElementOptions);
  external findAllByTestId(container, text, options, waitForElementOptions);
  external findAllByText(container, text, options, waitForElementOptions);
  external findAllByTitle(container, text, options, waitForElementOptions);
  external findByAltText(container, text, options, waitForElementOptions);
  external findByDisplayValue(container, text, options, waitForElementOptions);
  external findByLabelText(container, text, options, waitForElementOptions);
  external findByPlaceholderText(container, text, options, waitForElementOptions);
  external findByRole(container, text, options, waitForElementOptions);
  external findByTestId(container, text, options, waitForElementOptions);
  external findByText(container, text, options, waitForElementOptions);
  external findByTitle(container, text, options, waitForElementOptions);
  external getAllByAltText(container);
  external getAllByDisplayValue(container);
  external getAllByLabelText(container, text);
  external getAllByPlaceholderText(container);
  external getAllByRole(container);
  external getAllByTestId(container);
  external getAllByText(container);
  external getAllByTitle(container);
  external getByAltText(container);
  external getByDisplayValue(container);
  external getByLabelText(container);
  external getByPlaceholderText(container);
  external getByRole(container);
  external getByTestId(container);
  external getByText(container);
  external getByTitle(container);
  external queryAllByAltText(container, alt, _temp);
  external queryAllByDisplayValue(container, value, _temp);
  external queryAllByLabelText(container, text, _temp2);
  external queryAllByPlaceholderText(container);
  external queryAllByRole(container, role, _temp);
  external queryAllByTestId();
  external queryAllByText(container, text, _temp);
  external queryAllByTitle(container, text, _temp);
  external queryByAltText(container);
  external queryByDisplayValue(container);
  external queryByLabelText(container);
  external queryByPlaceholderText(container);
  external queryByRole(container);
  external queryByTestId(container);
  external queryByText(container);
  external queryByTitle(container);
}

@JS('TestingLibraryReact.queryHelpers')
class QueryHelpers {
  external buildQueries(queryAllBy, getMultipleError, getMissingError);
  external getElementError(message, container);
  external getMultipleElementsFoundError(message, container);
  external makeFindQuery(getter);
  external makeGetAllQuery(allQuery, getMissingError);
  external makeSingleQuery(allQuery, getMultipleError);
  external queryAllByAttribute(attribute, container, text, _temp);
  external queryByAttribute(attribute, container, text);
}

@JS('TestingLibraryReact.createEvent')
class CreateEvent {
  external abort(node, init);
  external animationEnd(node, init);
  external animationIteration(node, init);
  external animationStart(node, init);
  external blur(node, init);
  external canPlay(node, init);
  external canPlayThrough(node, init);
  external change(node, init);
  external click(node, init);
  external compositionEnd(node, init);
  external compositionStart(node, init);
  external compositionUpdate(node, init);
  external contextMenu(node, init);
  external copy(node, init);
  external cut(node, init);
  external dblClick(node, init);
  external drag(node, init);
  external dragEnd(node, init);
  external dragEnter(node, init);
  external dragExit(node, init);
  external dragLeave(node, init);
  external dragOver(node, init);
  external dragStart(node, init);
  external drop(node, init);
  external durationChange(node, init);
  external emptied(node, init);
  external encrypted(node, init);
  external ended(node, init);
  external error(node, init);
  external focus(node, init);
  external focusIn(node, init);
  external focusOut(node, init);
  external gotPointerCapture(node, init);
  external input(node, init);
  external invalid(node, init);
  external keyDown(node, init);
  external keyPress(node, init);
  external keyUp(node, init);
  external load(node, init);
  external loadStart(node, init);
  external loadedData(node, init);
  external loadedMetadata(node, init);
  external lostPointerCapture(node, init);
  external mouseDown(node, init);
  external mouseEnter(node, init);
  external mouseLeave(node, init);
  external mouseMove(node, init);
  external mouseOut(node, init);
  external mouseOver(node, init);
  external mouseUp(node, init);
  external paste(node, init);
  external pause(node, init);
  external play(node, init);
  external playing(node, init);
  external pointerCancel(node, init);
  external pointerDown(node, init);
  external pointerEnter(node, init);
  external pointerLeave(node, init);
  external pointerMove(node, init);
  external pointerOut(node, init);
  external pointerOver(node, init);
  external pointerUp(node, init);
  external progress(node, init);
  external rateChange(node, init);
  external scroll(node, init);
  external seeked(node, init);
  external seeking(node, init);
  external select(node, init);
  external stalled(node, init);
  external submit(node, init);
  external suspend(node, init);
  external timeUpdate(node, init);
  external touchCancel(node, init);
  external touchEnd(node, init);
  external touchMove(node, init);
  external touchStart(node, init);
  external transitionEnd(node, init);
  external volumeChange(node, init);
  external waiting(node, init);
  external wheel(node, init);
}

@JS()
@anonymous
class DefinePropertyValue {
  external set value(String v);
  external set enumerable(bool v);
  external set configurable(bool v);
  external set writable(bool v);
  external factory DefinePropertyValue({
    enumerable,
    configurable,
    writable,
    value,
  });
}

@JS()
@anonymous
class JsMap {
  external factory JsMap();
}
