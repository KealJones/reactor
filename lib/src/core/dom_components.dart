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

import 'package:reactor/src/core/maps.dart';

/// A class that provides namespacing for static DOM component factory methods, much like `React.DOM` in React JS.
abstract class Dom {
  /// Returns a new [UiDomPropsMixin] that renders an `<a>` tag with getters/setters for all DOM-related React props
  static UiDomProps a([backingMap]) => UiDomProps(backingMap)..$componentClass = 'a';

  /// Returns a new [UiDomPropsMixin] that renders an `<abbr>` tag with getters/setters for all DOM-related React props
  static UiDomProps abbr([backingMap]) => UiDomProps(backingMap)..$componentClass = 'abbr';

  /// Returns a new [UiDomPropsMixin] that renders an `<address>` tag with getters/setters for all DOM-related React props
  static UiDomProps address([backingMap]) => UiDomProps(backingMap)..$componentClass = 'address';

  /// Returns a new [UiDomPropsMixin] that renders an `<area>` tag with getters/setters for all DOM-related React props
  static UiDomProps area([backingMap]) => UiDomProps(backingMap)..$componentClass = 'area';

  /// Returns a new [UiDomPropsMixin] that renders an `<article>` tag with getters/setters for all DOM-related React props
  static UiDomProps article([backingMap]) => UiDomProps(backingMap)..$componentClass = 'article';

  /// Returns a new [UiDomPropsMixin] that renders an `<aside>` tag with getters/setters for all DOM-related React props
  static UiDomProps aside([backingMap]) => UiDomProps(backingMap)..$componentClass = 'aside';

  /// Returns a new [UiDomPropsMixin] that renders an `<audio>` tag with getters/setters for all DOM-related React props
  static UiDomProps audio([backingMap]) => UiDomProps(backingMap)..$componentClass = 'audio';

  /// Returns a new [UiDomPropsMixin] that renders a `<b>` tag with getters/setters for all DOM-related React props
  static UiDomProps b([backingMap]) => UiDomProps(backingMap)..$componentClass = 'b';

  /// Returns a new [UiDomPropsMixin] that renders a `<base>` tag with getters/setters for all DOM-related React props
  static UiDomProps base([backingMap]) => UiDomProps(backingMap)..$componentClass = 'base';

  /// Returns a new [UiDomPropsMixin] that renders a `<bdi>` tag with getters/setters for all DOM-related React props
  static UiDomProps bdi([backingMap]) => UiDomProps(backingMap)..$componentClass = 'bdi';

  /// Returns a new [UiDomPropsMixin] that renders a `<bdo>` tag with getters/setters for all DOM-related React props
  static UiDomProps bdo([backingMap]) => UiDomProps(backingMap)..$componentClass = 'bdo';

  /// Returns a new [UiDomPropsMixin] that renders a `<big>` tag with getters/setters for all DOM-related React props
  static UiDomProps big([backingMap]) => UiDomProps(backingMap)..$componentClass = 'big';

  /// Returns a new [UiDomPropsMixin] that renders a `<blockquote>` tag with getters/setters for all DOM-related React props
  static UiDomProps blockquote([backingMap]) => UiDomProps(backingMap)..$componentClass = 'blockquote';

  /// Returns a new [UiDomPropsMixin] that renders a `<body>` tag with getters/setters for all DOM-related React props
  static UiDomProps body([backingMap]) => UiDomProps(backingMap)..$componentClass = 'body';

  /// Returns a new [UiDomPropsMixin] that renders a `<br>` tag with getters/setters for all DOM-related React props
  static UiDomProps br([backingMap]) => UiDomProps(backingMap)..$componentClass = 'br';

  /// Returns a new [UiDomPropsMixin] that renders a `<button>` tag with getters/setters for all DOM-related React props
  static UiDomProps button([backingMap]) => UiDomProps(backingMap)..$componentClass = 'button';

  /// Returns a new [UiDomPropsMixin] that renders a `<canvas>` tag with getters/setters for all DOM-related React props
  static UiDomProps canvas([backingMap]) => UiDomProps(backingMap)..$componentClass = 'canvas';

  /// Returns a new [UiDomPropsMixin] that renders a `<caption>` tag with getters/setters for all DOM-related React props
  static UiDomProps caption([backingMap]) => UiDomProps(backingMap)..$componentClass = 'caption';

  /// Returns a new [UiDomPropsMixin] that renders a `<cite>` tag with getters/setters for all DOM-related React props
  static UiDomProps cite([backingMap]) => UiDomProps(backingMap)..$componentClass = 'cite';

  /// Returns a new [UiDomPropsMixin] that renders a `<code>` tag with getters/setters for all DOM-related React props
  static UiDomProps code([backingMap]) => UiDomProps(backingMap)..$componentClass = 'code';

  /// Returns a new [UiDomPropsMixin] that renders a `<col>` tag with getters/setters for all DOM-related React props
  static UiDomProps col([backingMap]) => UiDomProps(backingMap)..$componentClass = 'col';

  /// Returns a new [UiDomPropsMixin] that renders a `<colgroup>` tag with getters/setters for all DOM-related React props
  static UiDomProps colgroup([backingMap]) => UiDomProps(backingMap)..$componentClass = 'colgroup';

  /// Returns a new [UiDomPropsMixin] that renders a `<data>` tag with getters/setters for all DOM-related React props
  static UiDomProps data([backingMap]) => UiDomProps(backingMap)..$componentClass = 'data';

  /// Returns a new [UiDomPropsMixin] that renders a `<datalist>` tag with getters/setters for all DOM-related React props
  static UiDomProps datalist([backingMap]) => UiDomProps(backingMap)..$componentClass = 'datalist';

  /// Returns a new [UiDomPropsMixin] that renders a `<dd>` tag with getters/setters for all DOM-related React props
  static UiDomProps dd([backingMap]) => UiDomProps(backingMap)..$componentClass = 'dd';

  /// Returns a new [UiDomPropsMixin] that renders a `<del>` tag with getters/setters for all DOM-related React props
  static UiDomProps del([backingMap]) => UiDomProps(backingMap)..$componentClass = 'del';

  /// Returns a new [UiDomPropsMixin] that renders a `<details>` tag with getters/setters for all DOM-related React props
  static UiDomProps details([backingMap]) => UiDomProps(backingMap)..$componentClass = 'details';

  /// Returns a new [UiDomPropsMixin] that renders a `<dfn>` tag with getters/setters for all DOM-related React props
  static UiDomProps dfn([backingMap]) => UiDomProps(backingMap)..$componentClass = 'dfn';

  /// Returns a new [UiDomPropsMixin] that renders a `<dialog>` tag with getters/setters for all DOM-related React props
  static UiDomProps dialog([backingMap]) => UiDomProps(backingMap)..$componentClass = 'dialog';

  /// Returns a new [UiDomPropsMixin] that renders a `<div>` tag with getters/setters for all DOM-related React props
  static UiDomProps div([backingMap]) => UiDomProps(backingMap)..$componentClass = 'div';

  /// Returns a new [UiDomPropsMixin] that renders a `<dl>` tag with getters/setters for all DOM-related React props
  static UiDomProps dl([backingMap]) => UiDomProps(backingMap)..$componentClass = 'dl';

  /// Returns a new [UiDomPropsMixin] that renders a `<dt>` tag with getters/setters for all DOM-related React props
  static UiDomProps dt([backingMap]) => UiDomProps(backingMap)..$componentClass = 'dt';

  /// Returns a new [UiDomPropsMixin] that renders an `<em>` tag with getters/setters for all DOM-related React props
  static UiDomProps em([backingMap]) => UiDomProps(backingMap)..$componentClass = 'em';

  /// Returns a new [UiDomPropsMixin] that renders an `<embed>` tag with getters/setters for all DOM-related React props
  static UiDomProps embed([backingMap]) => UiDomProps(backingMap)..$componentClass = 'embed';

  /// Returns a new [UiDomPropsMixin] that renders a `<fieldset>` tag with getters/setters for all DOM-related React props
  static UiDomProps fieldset([backingMap]) => UiDomProps(backingMap)..$componentClass = 'fieldset';

  /// Returns a new [UiDomPropsMixin] that renders a `<figcaption>` tag with getters/setters for all DOM-related React props
  static UiDomProps figcaption([backingMap]) => UiDomProps(backingMap)..$componentClass = 'figcaption';

  /// Returns a new [UiDomPropsMixin] that renders a `<figure>` tag with getters/setters for all DOM-related React props
  static UiDomProps figure([backingMap]) => UiDomProps(backingMap)..$componentClass = 'figure';

  /// Returns a new [UiDomPropsMixin] that renders a `<footer>` tag with getters/setters for all DOM-related React props
  static UiDomProps footer([backingMap]) => UiDomProps(backingMap)..$componentClass = 'footer';

  /// Returns a new [UiDomPropsMixin] that renders a `<form>` tag with getters/setters for all DOM-related React props
  static UiDomProps form([backingMap]) => UiDomProps(backingMap)..$componentClass = 'form';

  /// Returns a new [UiDomPropsMixin] that renders a `<h1>` tag with getters/setters for all DOM-related React props
  static UiDomProps h1([backingMap]) => UiDomProps(backingMap)..$componentClass = 'h1';

  /// Returns a new [UiDomPropsMixin] that renders a `<h2>` tag with getters/setters for all DOM-related React props
  static UiDomProps h2([backingMap]) => UiDomProps(backingMap)..$componentClass = 'h2';

  /// Returns a new [UiDomPropsMixin] that renders a `<h3>` tag with getters/setters for all DOM-related React props
  static UiDomProps h3([backingMap]) => UiDomProps(backingMap)..$componentClass = 'h3';

  /// Returns a new [UiDomPropsMixin] that renders a `<h4>` tag with getters/setters for all DOM-related React props
  static UiDomProps h4([backingMap]) => UiDomProps(backingMap)..$componentClass = 'h4';

  /// Returns a new [UiDomPropsMixin] that renders a `<h5>` tag with getters/setters for all DOM-related React props
  static UiDomProps h5([backingMap]) => UiDomProps(backingMap)..$componentClass = 'h5';

  /// Returns a new [UiDomPropsMixin] that renders a `<h6>` tag with getters/setters for all DOM-related React props
  static UiDomProps h6([backingMap]) => UiDomProps(backingMap)..$componentClass = 'h6';

  /// Returns a new [UiDomPropsMixin] that renders a `<head>` tag with getters/setters for all DOM-related React props
  static UiDomProps head([backingMap]) => UiDomProps(backingMap)..$componentClass = 'head';

  /// Returns a new [UiDomPropsMixin] that renders a `<header>` tag with getters/setters for all DOM-related React props
  static UiDomProps header([backingMap]) => UiDomProps(backingMap)..$componentClass = 'header';

  /// Returns a new [UiDomPropsMixin] that renders a `<hr>` tag with getters/setters for all DOM-related React props
  static UiDomProps hr([backingMap]) => UiDomProps(backingMap)..$componentClass = 'hr';

  /// Returns a new [UiDomPropsMixin] that renders a `<html>` tag with getters/setters for all DOM-related React props
  static UiDomProps html([backingMap]) => UiDomProps(backingMap)..$componentClass = 'html';

  /// Returns a new [UiDomPropsMixin] that renders an `<i>` tag with getters/setters for all DOM-related React props
  static UiDomProps i([backingMap]) => UiDomProps(backingMap)..$componentClass = 'i';

  /// Returns a new [UiDomPropsMixin] that renders an `<iframe>` tag with getters/setters for all DOM-related React props
  static UiDomProps iframe([backingMap]) => UiDomProps(backingMap)..$componentClass = 'iframe';

  /// Returns a new [UiDomPropsMixin] that renders an `<img>` tag with getters/setters for all DOM-related React props
  static UiDomProps img([backingMap]) => UiDomProps(backingMap)..$componentClass = 'img';

  /// Returns a new [UiDomPropsMixin] that renders an `<input>` tag with getters/setters for all DOM-related React props
  static UiDomProps input([backingMap]) => UiDomProps(backingMap)..$componentClass = 'input';

  /// Returns a new [UiDomPropsMixin] that renders an `<ins>` tag with getters/setters for all DOM-related React props
  static UiDomProps ins([backingMap]) => UiDomProps(backingMap)..$componentClass = 'ins';

  /// Returns a new [UiDomPropsMixin] that renders a `<kbd>` tag with getters/setters for all DOM-related React props
  static UiDomProps kbd([backingMap]) => UiDomProps(backingMap)..$componentClass = 'kbd';

  /// Returns a new [UiDomPropsMixin] that renders a `<keygen>` tag with getters/setters for all DOM-related React props
  static UiDomProps keygen([backingMap]) => UiDomProps(backingMap)..$componentClass = 'keygen';

  /// Returns a new [UiDomPropsMixin] that renders a `<label>` tag with getters/setters for all DOM-related React props
  static UiDomProps label([backingMap]) => UiDomProps(backingMap)..$componentClass = 'label';

  /// Returns a new [UiDomPropsMixin] that renders a `<legend>` tag with getters/setters for all DOM-related React props
  static UiDomProps legend([backingMap]) => UiDomProps(backingMap)..$componentClass = 'legend';

  /// Returns a new [UiDomPropsMixin] that renders a `<li>` tag with getters/setters for all DOM-related React props
  static UiDomProps li([backingMap]) => UiDomProps(backingMap)..$componentClass = 'li';

  /// Returns a new [UiDomPropsMixin] that renders a `<link>` tag with getters/setters for all DOM-related React props
  static UiDomProps link([backingMap]) => UiDomProps(backingMap)..$componentClass = 'link';

  /// Returns a new [UiDomPropsMixin] that renders a `<main>` tag with getters/setters for all DOM-related React props
  static UiDomProps main([backingMap]) => UiDomProps(backingMap)..$componentClass = 'main';

  /// Returns a new [UiDomPropsMixin] that renders a `<map>` tag with getters/setters for all DOM-related React props
  static UiDomProps map([backingMap]) => UiDomProps(backingMap)..$componentClass = 'map';

  /// Returns a new [UiDomPropsMixin] that renders a `<mark>` tag with getters/setters for all DOM-related React props
  static UiDomProps mark([backingMap]) => UiDomProps(backingMap)..$componentClass = 'mark';

  /// Returns a new [UiDomPropsMixin] that renders a `<menu>` tag with getters/setters for all DOM-related React props
  static UiDomProps menu([backingMap]) => UiDomProps(backingMap)..$componentClass = 'menu';

  /// Returns a new [UiDomPropsMixin] that renders a `<menuitem>` tag with getters/setters for all DOM-related React props
  static UiDomProps menuitem([backingMap]) => UiDomProps(backingMap)..$componentClass = 'menuitem';

  /// Returns a new [UiDomPropsMixin] that renders a `<meta>` tag with getters/setters for all DOM-related React props
  static UiDomProps meta([backingMap]) => UiDomProps(backingMap)..$componentClass = 'meta';

  /// Returns a new [UiDomPropsMixin] that renders a `<meter>` tag with getters/setters for all DOM-related React props
  static UiDomProps meter([backingMap]) => UiDomProps(backingMap)..$componentClass = 'meter';

  /// Returns a new [UiDomPropsMixin] that renders a `<nav>` tag with getters/setters for all DOM-related React props
  static UiDomProps nav([backingMap]) => UiDomProps(backingMap)..$componentClass = 'nav';

  /// Returns a new [UiDomPropsMixin] that renders a `<noscript>` tag with getters/setters for all DOM-related React props
  static UiDomProps noscript([backingMap]) => UiDomProps(backingMap)..$componentClass = 'noscript';

  /// Returns a new [UiDomPropsMixin] that renders an `<object>` tag with getters/setters for all DOM-related React props
  static UiDomProps object([backingMap]) => UiDomProps(backingMap)..$componentClass = 'object';

  /// Returns a new [UiDomPropsMixin] that renders an `<ol>` tag with getters/setters for all DOM-related React props
  static UiDomProps ol([backingMap]) => UiDomProps(backingMap)..$componentClass = 'ol';

  /// Returns a new [UiDomPropsMixin] that renders an `<optgroup>` tag with getters/setters for all DOM-related React props
  static UiDomProps optgroup([backingMap]) => UiDomProps(backingMap)..$componentClass = 'optgroup';

  /// Returns a new [UiDomPropsMixin] that renders an `<option>` tag with getters/setters for all DOM-related React props
  static UiDomProps option([backingMap]) => UiDomProps(backingMap)..$componentClass = 'option';

  /// Returns a new [UiDomPropsMixin] that renders an `<output>` tag with getters/setters for all DOM-related React props
  static UiDomProps output([backingMap]) => UiDomProps(backingMap)..$componentClass = 'output';

  /// Returns a new [UiDomPropsMixin] that renders a `<p>` tag with getters/setters for all DOM-related React props
  static UiDomProps p([backingMap]) => UiDomProps(backingMap)..$componentClass = 'p';

  /// Returns a new [UiDomPropsMixin] that renders a `<param>` tag with getters/setters for all DOM-related React props
  static UiDomProps param([backingMap]) => UiDomProps(backingMap)..$componentClass = 'param';

  /// Returns a new [UiDomPropsMixin] that renders a `<picture>` tag with getters/setters for all DOM-related React props
  static UiDomProps picture([backingMap]) => UiDomProps(backingMap)..$componentClass = 'picture';

  /// Returns a new [UiDomPropsMixin] that renders a `<pre>` tag with getters/setters for all DOM-related React props
  static UiDomProps pre([backingMap]) => UiDomProps(backingMap)..$componentClass = 'pre';

  /// Returns a new [UiDomPropsMixin] that renders a `<progress>` tag with getters/setters for all DOM-related React props
  static UiDomProps progress([backingMap]) => UiDomProps(backingMap)..$componentClass = 'progress';

  /// Returns a new [UiDomPropsMixin] that renders a `<q>` tag with getters/setters for all DOM-related React props
  static UiDomProps q([backingMap]) => UiDomProps(backingMap)..$componentClass = 'q';

  /// Returns a new [UiDomPropsMixin] that renders a `<rp>` tag with getters/setters for all DOM-related React props
  static UiDomProps rp([backingMap]) => UiDomProps(backingMap)..$componentClass = 'rp';

  /// Returns a new [UiDomPropsMixin] that renders a `<rt>` tag with getters/setters for all DOM-related React props
  static UiDomProps rt([backingMap]) => UiDomProps(backingMap)..$componentClass = 'rt';

  /// Returns a new [UiDomPropsMixin] that renders a `<ruby>` tag with getters/setters for all DOM-related React props
  static UiDomProps ruby([backingMap]) => UiDomProps(backingMap)..$componentClass = 'ruby';

  /// Returns a new [UiDomPropsMixin] that renders a `<s>` tag with getters/setters for all DOM-related React props
  static UiDomProps s([backingMap]) => UiDomProps(backingMap)..$componentClass = 's';

  /// Returns a new [UiDomPropsMixin] that renders a `<samp>` tag with getters/setters for all DOM-related React props
  static UiDomProps samp([backingMap]) => UiDomProps(backingMap)..$componentClass = 'samp';

  /// Returns a new [UiDomPropsMixin] that renders a `<script>` tag with getters/setters for all DOM-related React props
  static UiDomProps script([backingMap]) => UiDomProps(backingMap)..$componentClass = 'script';

  /// Returns a new [UiDomPropsMixin] that renders a `<section>` tag with getters/setters for all DOM-related React props
  static UiDomProps section([backingMap]) => UiDomProps(backingMap)..$componentClass = 'section';

  /// Returns a new [UiDomPropsMixin] that renders a `<select>` tag with getters/setters for all DOM-related React props
  static UiDomProps select([backingMap]) => UiDomProps(backingMap)..$componentClass = 'select';

  /// Returns a new [UiDomPropsMixin] that renders a `<small>` tag with getters/setters for all DOM-related React props
  static UiDomProps small([backingMap]) => UiDomProps(backingMap)..$componentClass = 'small';

  /// Returns a new [UiDomPropsMixin] that renders a `<source>` tag with getters/setters for all DOM-related React props
  static UiDomProps source([backingMap]) => UiDomProps(backingMap)..$componentClass = 'source';

  /// Returns a new [UiDomPropsMixin] that renders a `<span>` tag with getters/setters for all DOM-related React props
  static UiDomProps span([backingMap]) => UiDomProps(backingMap)..$componentClass = 'span';

  /// Returns a new [UiDomPropsMixin] that renders a `<strong>` tag with getters/setters for all DOM-related React props
  static UiDomProps strong([backingMap]) => UiDomProps(backingMap)..$componentClass = 'strong';

  /// Returns a new [UiDomPropsMixin] that renders a `<style>` tag with getters/setters for all DOM-related React props
  static UiDomProps style([backingMap]) => UiDomProps(backingMap)..$componentClass = 'style';

  /// Returns a new [UiDomPropsMixin] that renders a `<sub>` tag with getters/setters for all DOM-related React props
  static UiDomProps sub([backingMap]) => UiDomProps(backingMap)..$componentClass = 'sub';

  /// Returns a new [UiDomPropsMixin] that renders a `<summary>` tag with getters/setters for all DOM-related React props
  static UiDomProps summary([backingMap]) => UiDomProps(backingMap)..$componentClass = 'summary';

  /// Returns a new [UiDomPropsMixin] that renders a `<sup>` tag with getters/setters for all DOM-related React props
  static UiDomProps sup([backingMap]) => UiDomProps(backingMap)..$componentClass = 'sup';

  /// Returns a new [UiDomPropsMixin] that renders a `<table>` tag with getters/setters for all DOM-related React props
  static UiDomProps table([backingMap]) => UiDomProps(backingMap)..$componentClass = 'table';

  /// Returns a new [UiDomPropsMixin] that renders a `<tbody>` tag with getters/setters for all DOM-related React props
  static UiDomProps tbody([backingMap]) => UiDomProps(backingMap)..$componentClass = 'tbody';

  /// Returns a new [UiDomPropsMixin] that renders a `<td>` tag with getters/setters for all DOM-related React props
  static UiDomProps td([backingMap]) => UiDomProps(backingMap)..$componentClass = 'td';

  /// Returns a new [UiDomPropsMixin] that renders a `<textarea>` tag with getters/setters for all DOM-related React props
  static UiDomProps textarea([backingMap]) => UiDomProps(backingMap)..$componentClass = 'textarea';

  /// Returns a new [UiDomPropsMixin] that renders a `<tfoot>` tag with getters/setters for all DOM-related React props
  static UiDomProps tfoot([backingMap]) => UiDomProps(backingMap)..$componentClass = 'tfoot';

  /// Returns a new [UiDomPropsMixin] that renders a `<th>` tag with getters/setters for all DOM-related React props
  static UiDomProps th([backingMap]) => UiDomProps(backingMap)..$componentClass = 'th';

  /// Returns a new [UiDomPropsMixin] that renders a `<thead>` tag with getters/setters for all DOM-related React props
  static UiDomProps thead([backingMap]) => UiDomProps(backingMap)..$componentClass = 'thead';

  /// Returns a new [UiDomPropsMixin] that renders a `<time>` tag with getters/setters for all DOM-related React props
  static UiDomProps time([backingMap]) => UiDomProps(backingMap)..$componentClass = 'time';

  /// Returns a new [UiDomPropsMixin] that renders a `<title>` tag with getters/setters for all DOM-related React props
  static UiDomProps title([backingMap]) => UiDomProps(backingMap)..$componentClass = 'title';

  /// Returns a new [UiDomPropsMixin] that renders a `<tr>` tag with getters/setters for all DOM-related React props
  static UiDomProps tr([backingMap]) => UiDomProps(backingMap)..$componentClass = 'tr';

  /// Returns a new [UiDomPropsMixin] that renders a `<track>` tag with getters/setters for all DOM-related React props
  static UiDomProps track([backingMap]) => UiDomProps(backingMap)..$componentClass = 'track';

  /// Returns a new [UiDomPropsMixin] that renders an `<u>` tag with getters/setters for all DOM-related React props
  static UiDomProps u([backingMap]) => UiDomProps(backingMap)..$componentClass = 'u';

  /// Returns a new [UiDomPropsMixin] that renders an `<ul>` tag with getters/setters for all DOM-related React props
  static UiDomProps ul([backingMap]) => UiDomProps(backingMap)..$componentClass = 'ul';

  /// Returns a new [UiDomPropsMixin] that renders a `<var>` tag with getters/setters for all DOM-related React props
  static UiDomProps variable([backingMap]) => UiDomProps(backingMap)..$componentClass = 'variable';

  /// Returns a new [UiDomPropsMixin] that renders a `<video>` tag with getters/setters for all DOM-related React props
  static UiDomProps video([backingMap]) => UiDomProps(backingMap)..$componentClass = 'video';

  /// Returns a new [UiDomPropsMixin] that renders a `<wbr>` tag with getters/setters for all DOM-related React props
  static UiDomProps wbr([backingMap]) => UiDomProps(backingMap)..$componentClass = 'wbr';
}
