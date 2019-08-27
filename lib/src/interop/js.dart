@JS()
library reactor.interop.js;

import 'dart:html';

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
  external static act(callback);
  external static bindElementToQueries(element, queries);
  external static buildQueries(queryAllBy, getMultipleError, getMissingError);
  external static cleanup();
  external static configure(newConfig);
  external static CreateEvent get createEvent;
  external static findAllByAltText(container, text, options, waitForElementOptions);
  external static findAllByDisplayValue(container, text, options, waitForElementOptions);
  external static findAllByLabelText(container, text, options, waitForElementOptions);
  external static findAllByPlaceholderText(container, text, options, waitForElementOptions);
  external static findAllByRole(container, text, options, waitForElementOptions);
  external static findAllByTestId(container, text, options, waitForElementOptions);
  external static findAllByText(container, text, options, waitForElementOptions);
  external static findAllByTitle(container, text, options, waitForElementOptions);
  external static findByAltText(container, text, options, waitForElementOptions);
  external static findByDisplayValue(container, text, options, waitForElementOptions);
  external static findByLabelText(container, text, options, waitForElementOptions);
  external static findByPlaceholderText(container, text, options, waitForElementOptions);
  external static findByRole(container, text, options, waitForElementOptions);
  external static findByTestId(container, text, options, waitForElementOptions);
  external static findByText(container, text, options, waitForElementOptions);
  external static findByTitle(container, text, options, waitForElementOptions);
  external static fireEvent();
  external static getAllByAltText(container);
  external static getAllByDisplayValue(container);
  external static getAllByLabelText(container, text);
  external static getAllByPlaceholderText(container);
  external static getAllByRole(container);
  external static getAllByTestId(container);
  external static getAllByText(container);
  external static getAllByTitle(container);
  external static getByAltText(container);
  external static getByDisplayValue(container);
  external static getByLabelText(container);
  external static getByPlaceholderText(container);
  external static getByRole(container);
  external static getByTestId(container);
  external static getByText(container);
  external static getByTitle(container);
  external static getDefaultNormalizer(_temp);
  external static getElementError(message, container);
  external static getMultipleElementsFoundError(message, container);
  external static getNodeText(node);
  external static getQueriesForElement(element, queries);
  external static getRoles(container);
  external static logDOM();
  external static logRoles(dom);
  external static makeFindQuery(getter);
  external static makeGetAllQuery(allQuery, getMissingError);
  external static makeSingleQuery(allQuery, getMultipleError);
  external static prettyDOM(dom, maxLength, options);
  external static Queries get queries;
  external static queryAllByAltText(container, alt, _temp);
  external static queryAllByAttribute(attribute, container, text, _temp);
  external static queryAllByDisplayValue(container, value, _temp);
  external static queryAllByLabelText(container, text, _temp2);
  external static queryAllByPlaceholderText();
  external static queryAllByRole(container, role, _temp);
  external static queryAllByTestId();
  external static queryAllByText(container, text, _temp);
  external static queryAllByTitle(container, text, _temp);
  external static queryByAltText(container);
  external static queryByAttribute(attribute, container, text);
  external static queryByDisplayValue(container);
  external static queryByLabelText(container);
  external static queryByPlaceholderText(container);
  external static queryByRole(container);
  external static queryByTestId(container);
  external static queryByText(container);
  external static queryByTitle(container);
  external static QueryHelpers get queryHelpers;
  external static RenderReturn render(ui, [container]);
  external static wait();
  external static waitForDomChange();
  external static waitForElement();
  external static waitForElementToBeRemoved();
  external static within(element, queries);
}

@JS()
@anonymous
class RenderReturn {
  external asFragment();
  external Element get baseElement;
  external Element get container;
  external debug(el);
  external findAllByAltText();
  external findAllByDisplayValue();
  external findAllByLabelText();
  external findAllByPlaceholderText();
  external findAllByRole();
  external findAllByTestId();
  external Promise<Element> findAllByText(text);
  external findAllByTitle();
  external findByAltText();
  external findByDisplayValue();
  external findByLabelText();
  external findByPlaceholderText();
  external findByRole();
  external findByTestId();
  external findByText();
  external findByTitle();
  external getAllByAltText();
  external getAllByDisplayValue();
  external getAllByLabelText();
  external getAllByPlaceholderText();
  external getAllByRole();
  external getAllByTestId();
  external getAllByText();
  external getAllByTitle();
  external getByAltText();
  external getByDisplayValue();
  external getByLabelText();
  external getByPlaceholderText();
  external getByRole();
  external getByTestId();
  external getByText();
  external getByTitle();
  external queryAllByAltText();
  external queryAllByDisplayValue();
  external queryAllByLabelText();
  external queryAllByPlaceholderText();
  external queryAllByRole();
  external queryAllByTestId();
  external queryAllByText();
  external queryAllByTitle();
  external queryByAltText();
  external queryByDisplayValue();
  external queryByLabelText();
  external queryByPlaceholderText();
  external queryByRole();
  external queryByTestId();
  external queryByText();
  external queryByTitle();
  external rerender(rerenderUi);
  external unmount();
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

@JS('Promise')
abstract class Promise<T> {
  external Promise then(onFulfilled(T value), onRejected(Object reason));
}