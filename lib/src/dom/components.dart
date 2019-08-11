// Copyright 2016 Workiva Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// [UiComponent]-based api with typed props for react-dart DOM components.
library reactor.dom.components;

import 'package:reactor/src/dom/props.dart';
import 'package:reactor/src/wrappers/maps.dart';

/// A class that provides namespacing for static DOM component factory methods, much like `React.DOM` in React JS.
abstract class Dom {
  /// Returns a new [UiPropsMixin] that renders an `<a>` tag with getters/setters for all DOM-related React props
  static UiProps a([backingMap]) => new UiProps(backingMap)..$componentClass = 'a';

  /// Returns a new [UiPropsMixin] that renders an `<abbr>` tag with getters/setters for all DOM-related React props
  static UiProps abbr([backingMap]) => new UiProps(backingMap)..$componentClass = 'abbr';

  /// Returns a new [UiPropsMixin] that renders an `<address>` tag with getters/setters for all DOM-related React props
  static UiProps address([backingMap]) => new UiProps(backingMap)..$componentClass = 'address';

  /// Returns a new [UiPropsMixin] that renders an `<area>` tag with getters/setters for all DOM-related React props
  static UiProps area([backingMap]) => new UiProps(backingMap)..$componentClass = 'area';

  /// Returns a new [UiPropsMixin] that renders an `<article>` tag with getters/setters for all DOM-related React props
  static UiProps article([backingMap]) => new UiProps(backingMap)..$componentClass = 'article';

  /// Returns a new [UiPropsMixin] that renders an `<aside>` tag with getters/setters for all DOM-related React props
  static UiProps aside([backingMap]) => new UiProps(backingMap)..$componentClass = 'aside';

  /// Returns a new [UiPropsMixin] that renders an `<audio>` tag with getters/setters for all DOM-related React props
  static UiProps audio([backingMap]) => new UiProps(backingMap)..$componentClass = 'audio';

  /// Returns a new [UiPropsMixin] that renders a `<b>` tag with getters/setters for all DOM-related React props
  static UiProps b([backingMap]) => new UiProps(backingMap)..$componentClass = 'b';

  /// Returns a new [UiPropsMixin] that renders a `<base>` tag with getters/setters for all DOM-related React props
  static UiProps base([backingMap]) => new UiProps(backingMap)..$componentClass = 'base';

  /// Returns a new [UiPropsMixin] that renders a `<bdi>` tag with getters/setters for all DOM-related React props
  static UiProps bdi([backingMap]) => new UiProps(backingMap)..$componentClass = 'bdi';

  /// Returns a new [UiPropsMixin] that renders a `<bdo>` tag with getters/setters for all DOM-related React props
  static UiProps bdo([backingMap]) => new UiProps(backingMap)..$componentClass = 'bdo';

  /// Returns a new [UiPropsMixin] that renders a `<big>` tag with getters/setters for all DOM-related React props
  static UiProps big([backingMap]) => new UiProps(backingMap)..$componentClass = 'big';

  /// Returns a new [UiPropsMixin] that renders a `<blockquote>` tag with getters/setters for all DOM-related React props
  static UiProps blockquote([backingMap]) => new UiProps(backingMap)..$componentClass = 'blockquote';

  /// Returns a new [UiPropsMixin] that renders a `<body>` tag with getters/setters for all DOM-related React props
  static UiProps body([backingMap]) => new UiProps(backingMap)..$componentClass = 'body';

  /// Returns a new [UiPropsMixin] that renders a `<br>` tag with getters/setters for all DOM-related React props
  static UiProps br([backingMap]) => new UiProps(backingMap)..$componentClass = 'br';

  /// Returns a new [UiPropsMixin] that renders a `<button>` tag with getters/setters for all DOM-related React props
  static UiProps button([backingMap]) => new UiProps(backingMap)..$componentClass = 'button';

  /// Returns a new [UiPropsMixin] that renders a `<canvas>` tag with getters/setters for all DOM-related React props
  static UiProps canvas([backingMap]) => new UiProps(backingMap)..$componentClass = 'canvas';

  /// Returns a new [UiPropsMixin] that renders a `<caption>` tag with getters/setters for all DOM-related React props
  static UiProps caption([backingMap]) => new UiProps(backingMap)..$componentClass = 'caption';

  /// Returns a new [UiPropsMixin] that renders a `<cite>` tag with getters/setters for all DOM-related React props
  static UiProps cite([backingMap]) => new UiProps(backingMap)..$componentClass = 'cite';

  /// Returns a new [UiPropsMixin] that renders a `<code>` tag with getters/setters for all DOM-related React props
  static UiProps code([backingMap]) => new UiProps(backingMap)..$componentClass = 'code';

  /// Returns a new [UiPropsMixin] that renders a `<col>` tag with getters/setters for all DOM-related React props
  static UiProps col([backingMap]) => new UiProps(backingMap)..$componentClass = 'col';

  /// Returns a new [UiPropsMixin] that renders a `<colgroup>` tag with getters/setters for all DOM-related React props
  static UiProps colgroup([backingMap]) => new UiProps(backingMap)..$componentClass = 'colgroup';

  /// Returns a new [UiPropsMixin] that renders a `<data>` tag with getters/setters for all DOM-related React props
  static UiProps data([backingMap]) => new UiProps(backingMap)..$componentClass = 'data';

  /// Returns a new [UiPropsMixin] that renders a `<datalist>` tag with getters/setters for all DOM-related React props
  static UiProps datalist([backingMap]) => new UiProps(backingMap)..$componentClass = 'datalist';

  /// Returns a new [UiPropsMixin] that renders a `<dd>` tag with getters/setters for all DOM-related React props
  static UiProps dd([backingMap]) => new UiProps(backingMap)..$componentClass = 'dd';

  /// Returns a new [UiPropsMixin] that renders a `<del>` tag with getters/setters for all DOM-related React props
  static UiProps del([backingMap]) => new UiProps(backingMap)..$componentClass = 'del';

  /// Returns a new [UiPropsMixin] that renders a `<details>` tag with getters/setters for all DOM-related React props
  static UiProps details([backingMap]) => new UiProps(backingMap)..$componentClass = 'details';

  /// Returns a new [UiPropsMixin] that renders a `<dfn>` tag with getters/setters for all DOM-related React props
  static UiProps dfn([backingMap]) => new UiProps(backingMap)..$componentClass = 'dfn';

  /// Returns a new [UiPropsMixin] that renders a `<dialog>` tag with getters/setters for all DOM-related React props
  static UiProps dialog([backingMap]) => new UiProps(backingMap)..$componentClass = 'dialog';

  /// Returns a new [UiPropsMixin] that renders a `<div>` tag with getters/setters for all DOM-related React props
  static UiProps div([backingMap]) => new UiProps(backingMap)..$componentClass = 'div';

  /// Returns a new [UiPropsMixin] that renders a `<dl>` tag with getters/setters for all DOM-related React props
  static UiProps dl([backingMap]) => new UiProps(backingMap)..$componentClass = 'dl';

  /// Returns a new [UiPropsMixin] that renders a `<dt>` tag with getters/setters for all DOM-related React props
  static UiProps dt([backingMap]) => new UiProps(backingMap)..$componentClass = 'dt';

  /// Returns a new [UiPropsMixin] that renders an `<em>` tag with getters/setters for all DOM-related React props
  static UiProps em([backingMap]) => new UiProps(backingMap)..$componentClass = 'em';

  /// Returns a new [UiPropsMixin] that renders an `<embed>` tag with getters/setters for all DOM-related React props
  static UiProps embed([backingMap]) => new UiProps(backingMap)..$componentClass = 'embed';

  /// Returns a new [UiPropsMixin] that renders a `<fieldset>` tag with getters/setters for all DOM-related React props
  static UiProps fieldset([backingMap]) => new UiProps(backingMap)..$componentClass = 'fieldset';

  /// Returns a new [UiPropsMixin] that renders a `<figcaption>` tag with getters/setters for all DOM-related React props
  static UiProps figcaption([backingMap]) => new UiProps(backingMap)..$componentClass = 'figcaption';

  /// Returns a new [UiPropsMixin] that renders a `<figure>` tag with getters/setters for all DOM-related React props
  static UiProps figure([backingMap]) => new UiProps(backingMap)..$componentClass = 'figure';

  /// Returns a new [UiPropsMixin] that renders a `<footer>` tag with getters/setters for all DOM-related React props
  static UiProps footer([backingMap]) => new UiProps(backingMap)..$componentClass = 'footer';

  /// Returns a new [UiPropsMixin] that renders a `<form>` tag with getters/setters for all DOM-related React props
  static UiProps form([backingMap]) => new UiProps(backingMap)..$componentClass = 'form';

  /// Returns a new [UiPropsMixin] that renders a `<h1>` tag with getters/setters for all DOM-related React props
  static UiProps h1([backingMap]) => new UiProps(backingMap)..$componentClass = 'h1';

  /// Returns a new [UiPropsMixin] that renders a `<h2>` tag with getters/setters for all DOM-related React props
  static UiProps h2([backingMap]) => new UiProps(backingMap)..$componentClass = 'h2';

  /// Returns a new [UiPropsMixin] that renders a `<h3>` tag with getters/setters for all DOM-related React props
  static UiProps h3([backingMap]) => new UiProps(backingMap)..$componentClass = 'h3';

  /// Returns a new [UiPropsMixin] that renders a `<h4>` tag with getters/setters for all DOM-related React props
  static UiProps h4([backingMap]) => new UiProps(backingMap)..$componentClass = 'h4';

  /// Returns a new [UiPropsMixin] that renders a `<h5>` tag with getters/setters for all DOM-related React props
  static UiProps h5([backingMap]) => new UiProps(backingMap)..$componentClass = 'h5';

  /// Returns a new [UiPropsMixin] that renders a `<h6>` tag with getters/setters for all DOM-related React props
  static UiProps h6([backingMap]) => new UiProps(backingMap)..$componentClass = 'h6';

  /// Returns a new [UiPropsMixin] that renders a `<head>` tag with getters/setters for all DOM-related React props
  static UiProps head([backingMap]) => new UiProps(backingMap)..$componentClass = 'head';

  /// Returns a new [UiPropsMixin] that renders a `<header>` tag with getters/setters for all DOM-related React props
  static UiProps header([backingMap]) => new UiProps(backingMap)..$componentClass = 'header';

  /// Returns a new [UiPropsMixin] that renders a `<hr>` tag with getters/setters for all DOM-related React props
  static UiProps hr([backingMap]) => new UiProps(backingMap)..$componentClass = 'hr';

  /// Returns a new [UiPropsMixin] that renders a `<html>` tag with getters/setters for all DOM-related React props
  static UiProps html([backingMap]) => new UiProps(backingMap)..$componentClass = 'html';

  /// Returns a new [UiPropsMixin] that renders an `<i>` tag with getters/setters for all DOM-related React props
  static UiProps i([backingMap]) => new UiProps(backingMap)..$componentClass = 'i';

  /// Returns a new [UiPropsMixin] that renders an `<iframe>` tag with getters/setters for all DOM-related React props
  static UiProps iframe([backingMap]) => new UiProps(backingMap)..$componentClass = 'iframe';

  /// Returns a new [UiPropsMixin] that renders an `<img>` tag with getters/setters for all DOM-related React props
  static UiProps img([backingMap]) => new UiProps(backingMap)..$componentClass = 'img';

  /// Returns a new [UiPropsMixin] that renders an `<input>` tag with getters/setters for all DOM-related React props
  static UiProps input([backingMap]) => new UiProps(backingMap)..$componentClass = 'input';

  /// Returns a new [UiPropsMixin] that renders an `<ins>` tag with getters/setters for all DOM-related React props
  static UiProps ins([backingMap]) => new UiProps(backingMap)..$componentClass = 'ins';

  /// Returns a new [UiPropsMixin] that renders a `<kbd>` tag with getters/setters for all DOM-related React props
  static UiProps kbd([backingMap]) => new UiProps(backingMap)..$componentClass = 'kbd';

  /// Returns a new [UiPropsMixin] that renders a `<keygen>` tag with getters/setters for all DOM-related React props
  static UiProps keygen([backingMap]) => new UiProps(backingMap)..$componentClass = 'keygen';

  /// Returns a new [UiPropsMixin] that renders a `<label>` tag with getters/setters for all DOM-related React props
  static UiProps label([backingMap]) => new UiProps(backingMap)..$componentClass = 'label';

  /// Returns a new [UiPropsMixin] that renders a `<legend>` tag with getters/setters for all DOM-related React props
  static UiProps legend([backingMap]) => new UiProps(backingMap)..$componentClass = 'legend';

  /// Returns a new [UiPropsMixin] that renders a `<li>` tag with getters/setters for all DOM-related React props
  static UiProps li([backingMap]) => new UiProps(backingMap)..$componentClass = 'li';

  /// Returns a new [UiPropsMixin] that renders a `<link>` tag with getters/setters for all DOM-related React props
  static UiProps link([backingMap]) => new UiProps(backingMap)..$componentClass = 'link';

  /// Returns a new [UiPropsMixin] that renders a `<main>` tag with getters/setters for all DOM-related React props
  static UiProps main([backingMap]) => new UiProps(backingMap)..$componentClass = 'main';

  /// Returns a new [UiPropsMixin] that renders a `<map>` tag with getters/setters for all DOM-related React props
  static UiProps map([backingMap]) => new UiProps(backingMap)..$componentClass = 'map';

  /// Returns a new [UiPropsMixin] that renders a `<mark>` tag with getters/setters for all DOM-related React props
  static UiProps mark([backingMap]) => new UiProps(backingMap)..$componentClass = 'mark';

  /// Returns a new [UiPropsMixin] that renders a `<menu>` tag with getters/setters for all DOM-related React props
  static UiProps menu([backingMap]) => new UiProps(backingMap)..$componentClass = 'menu';

  /// Returns a new [UiPropsMixin] that renders a `<menuitem>` tag with getters/setters for all DOM-related React props
  static UiProps menuitem([backingMap]) => new UiProps(backingMap)..$componentClass = 'menuitem';

  /// Returns a new [UiPropsMixin] that renders a `<meta>` tag with getters/setters for all DOM-related React props
  static UiProps meta([backingMap]) => new UiProps(backingMap)..$componentClass = 'meta';

  /// Returns a new [UiPropsMixin] that renders a `<meter>` tag with getters/setters for all DOM-related React props
  static UiProps meter([backingMap]) => new UiProps(backingMap)..$componentClass = 'meter';

  /// Returns a new [UiPropsMixin] that renders a `<nav>` tag with getters/setters for all DOM-related React props
  static UiProps nav([backingMap]) => new UiProps(backingMap)..$componentClass = 'nav';

  /// Returns a new [UiPropsMixin] that renders a `<noscript>` tag with getters/setters for all DOM-related React props
  static UiProps noscript([backingMap]) => new UiProps(backingMap)..$componentClass = 'noscript';

  /// Returns a new [UiPropsMixin] that renders an `<object>` tag with getters/setters for all DOM-related React props
  static UiProps object([backingMap]) => new UiProps(backingMap)..$componentClass = 'object';

  /// Returns a new [UiPropsMixin] that renders an `<ol>` tag with getters/setters for all DOM-related React props
  static UiProps ol([backingMap]) => new UiProps(backingMap)..$componentClass = 'ol';

  /// Returns a new [UiPropsMixin] that renders an `<optgroup>` tag with getters/setters for all DOM-related React props
  static UiProps optgroup([backingMap]) => new UiProps(backingMap)..$componentClass = 'optgroup';

  /// Returns a new [UiPropsMixin] that renders an `<option>` tag with getters/setters for all DOM-related React props
  static UiProps option([backingMap]) => new UiProps(backingMap)..$componentClass = 'option';

  /// Returns a new [UiPropsMixin] that renders an `<output>` tag with getters/setters for all DOM-related React props
  static UiProps output([backingMap]) => new UiProps(backingMap)..$componentClass = 'output';

  /// Returns a new [UiPropsMixin] that renders a `<p>` tag with getters/setters for all DOM-related React props
  static UiProps p([backingMap]) => new UiProps(backingMap)..$componentClass = 'p';

  /// Returns a new [UiPropsMixin] that renders a `<param>` tag with getters/setters for all DOM-related React props
  static UiProps param([backingMap]) => new UiProps(backingMap)..$componentClass = 'param';

  /// Returns a new [UiPropsMixin] that renders a `<picture>` tag with getters/setters for all DOM-related React props
  static UiProps picture([backingMap]) => new UiProps(backingMap)..$componentClass = 'picture';

  /// Returns a new [UiPropsMixin] that renders a `<pre>` tag with getters/setters for all DOM-related React props
  static UiProps pre([backingMap]) => new UiProps(backingMap)..$componentClass = 'pre';

  /// Returns a new [UiPropsMixin] that renders a `<progress>` tag with getters/setters for all DOM-related React props
  static UiProps progress([backingMap]) => new UiProps(backingMap)..$componentClass = 'progress';

  /// Returns a new [UiPropsMixin] that renders a `<q>` tag with getters/setters for all DOM-related React props
  static UiProps q([backingMap]) => new UiProps(backingMap)..$componentClass = 'q';

  /// Returns a new [UiPropsMixin] that renders a `<rp>` tag with getters/setters for all DOM-related React props
  static UiProps rp([backingMap]) => new UiProps(backingMap)..$componentClass = 'rp';

  /// Returns a new [UiPropsMixin] that renders a `<rt>` tag with getters/setters for all DOM-related React props
  static UiProps rt([backingMap]) => new UiProps(backingMap)..$componentClass = 'rt';

  /// Returns a new [UiPropsMixin] that renders a `<ruby>` tag with getters/setters for all DOM-related React props
  static UiProps ruby([backingMap]) => new UiProps(backingMap)..$componentClass = 'ruby';

  /// Returns a new [UiPropsMixin] that renders a `<s>` tag with getters/setters for all DOM-related React props
  static UiProps s([backingMap]) => new UiProps(backingMap)..$componentClass = 's';

  /// Returns a new [UiPropsMixin] that renders a `<samp>` tag with getters/setters for all DOM-related React props
  static UiProps samp([backingMap]) => new UiProps(backingMap)..$componentClass = 'samp';

  /// Returns a new [UiPropsMixin] that renders a `<script>` tag with getters/setters for all DOM-related React props
  static UiProps script([backingMap]) => new UiProps(backingMap)..$componentClass = 'script';

  /// Returns a new [UiPropsMixin] that renders a `<section>` tag with getters/setters for all DOM-related React props
  static UiProps section([backingMap]) => new UiProps(backingMap)..$componentClass = 'section';

  /// Returns a new [UiPropsMixin] that renders a `<select>` tag with getters/setters for all DOM-related React props
  static UiProps select([backingMap]) => new UiProps(backingMap)..$componentClass = 'select';

  /// Returns a new [UiPropsMixin] that renders a `<small>` tag with getters/setters for all DOM-related React props
  static UiProps small([backingMap]) => new UiProps(backingMap)..$componentClass = 'small';

  /// Returns a new [UiPropsMixin] that renders a `<source>` tag with getters/setters for all DOM-related React props
  static UiProps source([backingMap]) => new UiProps(backingMap)..$componentClass = 'source';

  /// Returns a new [UiPropsMixin] that renders a `<span>` tag with getters/setters for all DOM-related React props
  static UiProps span([backingMap]) => new UiProps(backingMap)..$componentClass = 'span';

  /// Returns a new [UiPropsMixin] that renders a `<strong>` tag with getters/setters for all DOM-related React props
  static UiProps strong([backingMap]) => new UiProps(backingMap)..$componentClass = 'strong';

  /// Returns a new [UiPropsMixin] that renders a `<style>` tag with getters/setters for all DOM-related React props
  static UiProps style([backingMap]) => new UiProps(backingMap)..$componentClass = 'style';

  /// Returns a new [UiPropsMixin] that renders a `<sub>` tag with getters/setters for all DOM-related React props
  static UiProps sub([backingMap]) => new UiProps(backingMap)..$componentClass = 'sub';

  /// Returns a new [UiPropsMixin] that renders a `<summary>` tag with getters/setters for all DOM-related React props
  static UiProps summary([backingMap]) => new UiProps(backingMap)..$componentClass = 'summary';

  /// Returns a new [UiPropsMixin] that renders a `<sup>` tag with getters/setters for all DOM-related React props
  static UiProps sup([backingMap]) => new UiProps(backingMap)..$componentClass = 'sup';

  /// Returns a new [UiPropsMixin] that renders a `<table>` tag with getters/setters for all DOM-related React props
  static UiProps table([backingMap]) => new UiProps(backingMap)..$componentClass = 'table';

  /// Returns a new [UiPropsMixin] that renders a `<tbody>` tag with getters/setters for all DOM-related React props
  static UiProps tbody([backingMap]) => new UiProps(backingMap)..$componentClass = 'tbody';

  /// Returns a new [UiPropsMixin] that renders a `<td>` tag with getters/setters for all DOM-related React props
  static UiProps td([backingMap]) => new UiProps(backingMap)..$componentClass = 'td';

  /// Returns a new [UiPropsMixin] that renders a `<textarea>` tag with getters/setters for all DOM-related React props
  static UiProps textarea([backingMap]) => new UiProps(backingMap)..$componentClass = 'textarea';

  /// Returns a new [UiPropsMixin] that renders a `<tfoot>` tag with getters/setters for all DOM-related React props
  static UiProps tfoot([backingMap]) => new UiProps(backingMap)..$componentClass = 'tfoot';

  /// Returns a new [UiPropsMixin] that renders a `<th>` tag with getters/setters for all DOM-related React props
  static UiProps th([backingMap]) => new UiProps(backingMap)..$componentClass = 'th';

  /// Returns a new [UiPropsMixin] that renders a `<thead>` tag with getters/setters for all DOM-related React props
  static UiProps thead([backingMap]) => new UiProps(backingMap)..$componentClass = 'thead';

  /// Returns a new [UiPropsMixin] that renders a `<time>` tag with getters/setters for all DOM-related React props
  static UiProps time([backingMap]) => new UiProps(backingMap)..$componentClass = 'time';

  /// Returns a new [UiPropsMixin] that renders a `<title>` tag with getters/setters for all DOM-related React props
  static UiProps title([backingMap]) => new UiProps(backingMap)..$componentClass = 'title';

  /// Returns a new [UiPropsMixin] that renders a `<tr>` tag with getters/setters for all DOM-related React props
  static UiProps tr([backingMap]) => new UiProps(backingMap)..$componentClass = 'tr';

  /// Returns a new [UiPropsMixin] that renders a `<track>` tag with getters/setters for all DOM-related React props
  static UiProps track([backingMap]) => new UiProps(backingMap)..$componentClass = 'track';

  /// Returns a new [UiPropsMixin] that renders an `<u>` tag with getters/setters for all DOM-related React props
  static UiProps u([backingMap]) => new UiProps(backingMap)..$componentClass = 'u';

  /// Returns a new [UiPropsMixin] that renders an `<ul>` tag with getters/setters for all DOM-related React props
  static UiProps ul([backingMap]) => new UiProps(backingMap)..$componentClass = 'ul';

  /// Returns a new [UiPropsMixin] that renders a `<var>` tag with getters/setters for all DOM-related React props
  static UiProps variable([backingMap]) => new UiProps(backingMap)..$componentClass = 'variable';

  /// Returns a new [UiPropsMixin] that renders a `<video>` tag with getters/setters for all DOM-related React props
  static UiProps video([backingMap]) => new UiProps(backingMap)..$componentClass = 'video';

  /// Returns a new [UiPropsMixin] that renders a `<wbr>` tag with getters/setters for all DOM-related React props
  static UiProps wbr([backingMap]) => new UiProps(backingMap)..$componentClass = 'wbr';
}
