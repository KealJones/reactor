library reactor.core.dom_components;

import 'package:reactor/src/core/maps.dart';

/// A class that provides namespacing for static DOM component factory methods, much like `React.DOM` in React JS.
abstract class Dom {
  /// Returns a new [DomPropsMixin] that renders an `<a>` tag with getters/setters for all DOM-related React props
  static DomProps a([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'a';

  /// Returns a new [DomPropsMixin] that renders an `<abbr>` tag with getters/setters for all DOM-related React props
  static DomProps abbr([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'abbr';

  /// Returns a new [DomPropsMixin] that renders an `<address>` tag with getters/setters for all DOM-related React props
  static DomProps address([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'address';

  /// Returns a new [DomPropsMixin] that renders an `<area>` tag with getters/setters for all DOM-related React props
  static DomProps area([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'area';

  /// Returns a new [DomPropsMixin] that renders an `<article>` tag with getters/setters for all DOM-related React props
  static DomProps article([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'article';

  /// Returns a new [DomPropsMixin] that renders an `<aside>` tag with getters/setters for all DOM-related React props
  static DomProps aside([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'aside';

  /// Returns a new [DomPropsMixin] that renders an `<audio>` tag with getters/setters for all DOM-related React props
  static DomProps audio([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'audio';

  /// Returns a new [DomPropsMixin] that renders a `<b>` tag with getters/setters for all DOM-related React props
  static DomProps b([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'b';

  /// Returns a new [DomPropsMixin] that renders a `<base>` tag with getters/setters for all DOM-related React props
  static DomProps base([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'base';

  /// Returns a new [DomPropsMixin] that renders a `<bdi>` tag with getters/setters for all DOM-related React props
  static DomProps bdi([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'bdi';

  /// Returns a new [DomPropsMixin] that renders a `<bdo>` tag with getters/setters for all DOM-related React props
  static DomProps bdo([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'bdo';

  /// Returns a new [DomPropsMixin] that renders a `<big>` tag with getters/setters for all DOM-related React props
  static DomProps big([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'big';

  /// Returns a new [DomPropsMixin] that renders a `<blockquote>` tag with getters/setters for all DOM-related React props
  static DomProps blockquote([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'blockquote';

  /// Returns a new [DomPropsMixin] that renders a `<body>` tag with getters/setters for all DOM-related React props
  static DomProps body([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'body';

  /// Returns a new [DomPropsMixin] that renders a `<br>` tag with getters/setters for all DOM-related React props
  static DomProps br([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'br';

  /// Returns a new [DomPropsMixin] that renders a `<button>` tag with getters/setters for all DOM-related React props
  static DomProps button([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'button';

  /// Returns a new [DomPropsMixin] that renders a `<canvas>` tag with getters/setters for all DOM-related React props
  static DomProps canvas([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'canvas';

  /// Returns a new [DomPropsMixin] that renders a `<caption>` tag with getters/setters for all DOM-related React props
  static DomProps caption([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'caption';

  /// Returns a new [DomPropsMixin] that renders a `<cite>` tag with getters/setters for all DOM-related React props
  static DomProps cite([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'cite';

  /// Returns a new [DomPropsMixin] that renders a `<code>` tag with getters/setters for all DOM-related React props
  static DomProps code([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'code';

  /// Returns a new [DomPropsMixin] that renders a `<col>` tag with getters/setters for all DOM-related React props
  static DomProps col([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'col';

  /// Returns a new [DomPropsMixin] that renders a `<colgroup>` tag with getters/setters for all DOM-related React props
  static DomProps colgroup([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'colgroup';

  /// Returns a new [DomPropsMixin] that renders a `<data>` tag with getters/setters for all DOM-related React props
  static DomProps data([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'data';

  /// Returns a new [DomPropsMixin] that renders a `<datalist>` tag with getters/setters for all DOM-related React props
  static DomProps datalist([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'datalist';

  /// Returns a new [DomPropsMixin] that renders a `<dd>` tag with getters/setters for all DOM-related React props
  static DomProps dd([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'dd';

  /// Returns a new [DomPropsMixin] that renders a `<del>` tag with getters/setters for all DOM-related React props
  static DomProps del([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'del';

  /// Returns a new [DomPropsMixin] that renders a `<details>` tag with getters/setters for all DOM-related React props
  static DomProps details([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'details';

  /// Returns a new [DomPropsMixin] that renders a `<dfn>` tag with getters/setters for all DOM-related React props
  static DomProps dfn([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'dfn';

  /// Returns a new [DomPropsMixin] that renders a `<dialog>` tag with getters/setters for all DOM-related React props
  static DomProps dialog([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'dialog';

  /// Returns a new [DomPropsMixin] that renders a `<div>` tag with getters/setters for all DOM-related React props
  static DomProps div([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'div';

  /// Returns a new [DomPropsMixin] that renders a `<dl>` tag with getters/setters for all DOM-related React props
  static DomProps dl([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'dl';

  /// Returns a new [DomPropsMixin] that renders a `<dt>` tag with getters/setters for all DOM-related React props
  static DomProps dt([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'dt';

  /// Returns a new [DomPropsMixin] that renders an `<em>` tag with getters/setters for all DOM-related React props
  static DomProps em([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'em';

  /// Returns a new [DomPropsMixin] that renders an `<embed>` tag with getters/setters for all DOM-related React props
  static DomProps embed([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'embed';

  /// Returns a new [DomPropsMixin] that renders a `<fieldset>` tag with getters/setters for all DOM-related React props
  static DomProps fieldset([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'fieldset';

  /// Returns a new [DomPropsMixin] that renders a `<figcaption>` tag with getters/setters for all DOM-related React props
  static DomProps figcaption([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'figcaption';

  /// Returns a new [DomPropsMixin] that renders a `<figure>` tag with getters/setters for all DOM-related React props
  static DomProps figure([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'figure';

  /// Returns a new [DomPropsMixin] that renders a `<footer>` tag with getters/setters for all DOM-related React props
  static DomProps footer([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'footer';

  /// Returns a new [DomPropsMixin] that renders a `<form>` tag with getters/setters for all DOM-related React props
  static DomProps form([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'form';

  /// Returns a new [DomPropsMixin] that renders a `<h1>` tag with getters/setters for all DOM-related React props
  static DomProps h1([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'h1';

  /// Returns a new [DomPropsMixin] that renders a `<h2>` tag with getters/setters for all DOM-related React props
  static DomProps h2([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'h2';

  /// Returns a new [DomPropsMixin] that renders a `<h3>` tag with getters/setters for all DOM-related React props
  static DomProps h3([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'h3';

  /// Returns a new [DomPropsMixin] that renders a `<h4>` tag with getters/setters for all DOM-related React props
  static DomProps h4([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'h4';

  /// Returns a new [DomPropsMixin] that renders a `<h5>` tag with getters/setters for all DOM-related React props
  static DomProps h5([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'h5';

  /// Returns a new [DomPropsMixin] that renders a `<h6>` tag with getters/setters for all DOM-related React props
  static DomProps h6([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'h6';

  /// Returns a new [DomPropsMixin] that renders a `<head>` tag with getters/setters for all DOM-related React props
  static DomProps head([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'head';

  /// Returns a new [DomPropsMixin] that renders a `<header>` tag with getters/setters for all DOM-related React props
  static DomProps header([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'header';

  /// Returns a new [DomPropsMixin] that renders a `<hr>` tag with getters/setters for all DOM-related React props
  static DomProps hr([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'hr';

  /// Returns a new [DomPropsMixin] that renders a `<html>` tag with getters/setters for all DOM-related React props
  static DomProps html([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'html';

  /// Returns a new [DomPropsMixin] that renders an `<i>` tag with getters/setters for all DOM-related React props
  static DomProps i([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'i';

  /// Returns a new [DomPropsMixin] that renders an `<iframe>` tag with getters/setters for all DOM-related React props
  static DomProps iframe([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'iframe';

  /// Returns a new [DomPropsMixin] that renders an `<img>` tag with getters/setters for all DOM-related React props
  static DomProps img([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'img';

  /// Returns a new [DomPropsMixin] that renders an `<input>` tag with getters/setters for all DOM-related React props
  static DomProps input([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'input';

  /// Returns a new [DomPropsMixin] that renders an `<ins>` tag with getters/setters for all DOM-related React props
  static DomProps ins([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'ins';

  /// Returns a new [DomPropsMixin] that renders a `<kbd>` tag with getters/setters for all DOM-related React props
  static DomProps kbd([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'kbd';

  /// Returns a new [DomPropsMixin] that renders a `<keygen>` tag with getters/setters for all DOM-related React props
  static DomProps keygen([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'keygen';

  /// Returns a new [DomPropsMixin] that renders a `<label>` tag with getters/setters for all DOM-related React props
  static DomProps label([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'label';

  /// Returns a new [DomPropsMixin] that renders a `<legend>` tag with getters/setters for all DOM-related React props
  static DomProps legend([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'legend';

  /// Returns a new [DomPropsMixin] that renders a `<li>` tag with getters/setters for all DOM-related React props
  static DomProps li([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'li';

  /// Returns a new [DomPropsMixin] that renders a `<link>` tag with getters/setters for all DOM-related React props
  static DomProps link([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'link';

  /// Returns a new [DomPropsMixin] that renders a `<main>` tag with getters/setters for all DOM-related React props
  static DomProps main([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'main';

  /// Returns a new [DomPropsMixin] that renders a `<map>` tag with getters/setters for all DOM-related React props
  static DomProps map([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'map';

  /// Returns a new [DomPropsMixin] that renders a `<mark>` tag with getters/setters for all DOM-related React props
  static DomProps mark([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'mark';

  /// Returns a new [DomPropsMixin] that renders a `<menu>` tag with getters/setters for all DOM-related React props
  static DomProps menu([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'menu';

  /// Returns a new [DomPropsMixin] that renders a `<menuitem>` tag with getters/setters for all DOM-related React props
  static DomProps menuitem([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'menuitem';

  /// Returns a new [DomPropsMixin] that renders a `<meta>` tag with getters/setters for all DOM-related React props
  static DomProps meta([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'meta';

  /// Returns a new [DomPropsMixin] that renders a `<meter>` tag with getters/setters for all DOM-related React props
  static DomProps meter([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'meter';

  /// Returns a new [DomPropsMixin] that renders a `<nav>` tag with getters/setters for all DOM-related React props
  static DomProps nav([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'nav';

  /// Returns a new [DomPropsMixin] that renders a `<noscript>` tag with getters/setters for all DOM-related React props
  static DomProps noscript([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'noscript';

  /// Returns a new [DomPropsMixin] that renders an `<object>` tag with getters/setters for all DOM-related React props
  static DomProps object([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'object';

  /// Returns a new [DomPropsMixin] that renders an `<ol>` tag with getters/setters for all DOM-related React props
  static DomProps ol([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'ol';

  /// Returns a new [DomPropsMixin] that renders an `<optgroup>` tag with getters/setters for all DOM-related React props
  static DomProps optgroup([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'optgroup';

  /// Returns a new [DomPropsMixin] that renders an `<option>` tag with getters/setters for all DOM-related React props
  static DomProps option([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'option';

  /// Returns a new [DomPropsMixin] that renders an `<output>` tag with getters/setters for all DOM-related React props
  static DomProps output([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'output';

  /// Returns a new [DomPropsMixin] that renders a `<p>` tag with getters/setters for all DOM-related React props
  static DomProps p([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'p';

  /// Returns a new [DomPropsMixin] that renders a `<param>` tag with getters/setters for all DOM-related React props
  static DomProps param([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'param';

  /// Returns a new [DomPropsMixin] that renders a `<picture>` tag with getters/setters for all DOM-related React props
  static DomProps picture([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'picture';

  /// Returns a new [DomPropsMixin] that renders a `<pre>` tag with getters/setters for all DOM-related React props
  static DomProps pre([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'pre';

  /// Returns a new [DomPropsMixin] that renders a `<progress>` tag with getters/setters for all DOM-related React props
  static DomProps progress([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'progress';

  /// Returns a new [DomPropsMixin] that renders a `<q>` tag with getters/setters for all DOM-related React props
  static DomProps q([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'q';

  /// Returns a new [DomPropsMixin] that renders a `<rp>` tag with getters/setters for all DOM-related React props
  static DomProps rp([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'rp';

  /// Returns a new [DomPropsMixin] that renders a `<rt>` tag with getters/setters for all DOM-related React props
  static DomProps rt([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'rt';

  /// Returns a new [DomPropsMixin] that renders a `<ruby>` tag with getters/setters for all DOM-related React props
  static DomProps ruby([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'ruby';

  /// Returns a new [DomPropsMixin] that renders a `<s>` tag with getters/setters for all DOM-related React props
  static DomProps s([backingMap]) =>
      DomProps(backingMap)..$componentClass = 's';

  /// Returns a new [DomPropsMixin] that renders a `<samp>` tag with getters/setters for all DOM-related React props
  static DomProps samp([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'samp';

  /// Returns a new [DomPropsMixin] that renders a `<script>` tag with getters/setters for all DOM-related React props
  static DomProps script([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'script';

  /// Returns a new [DomPropsMixin] that renders a `<section>` tag with getters/setters for all DOM-related React props
  static DomProps section([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'section';

  /// Returns a new [DomPropsMixin] that renders a `<select>` tag with getters/setters for all DOM-related React props
  static DomProps select([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'select';

  /// Returns a new [DomPropsMixin] that renders a `<small>` tag with getters/setters for all DOM-related React props
  static DomProps small([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'small';

  /// Returns a new [DomPropsMixin] that renders a `<source>` tag with getters/setters for all DOM-related React props
  static DomProps source([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'source';

  /// Returns a new [DomPropsMixin] that renders a `<span>` tag with getters/setters for all DOM-related React props
  static DomProps span([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'span';

  /// Returns a new [DomPropsMixin] that renders a `<strong>` tag with getters/setters for all DOM-related React props
  static DomProps strong([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'strong';

  /// Returns a new [DomPropsMixin] that renders a `<style>` tag with getters/setters for all DOM-related React props
  static DomProps style([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'style';

  /// Returns a new [DomPropsMixin] that renders a `<sub>` tag with getters/setters for all DOM-related React props
  static DomProps sub([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'sub';

  /// Returns a new [DomPropsMixin] that renders a `<summary>` tag with getters/setters for all DOM-related React props
  static DomProps summary([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'summary';

  /// Returns a new [DomPropsMixin] that renders a `<sup>` tag with getters/setters for all DOM-related React props
  static DomProps sup([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'sup';

  /// Returns a new [DomPropsMixin] that renders a `<table>` tag with getters/setters for all DOM-related React props
  static DomProps table([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'table';

  /// Returns a new [DomPropsMixin] that renders a `<tbody>` tag with getters/setters for all DOM-related React props
  static DomProps tbody([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'tbody';

  /// Returns a new [DomPropsMixin] that renders a `<td>` tag with getters/setters for all DOM-related React props
  static DomProps td([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'td';

  /// Returns a new [DomPropsMixin] that renders a `<textarea>` tag with getters/setters for all DOM-related React props
  static DomProps textarea([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'textarea';

  /// Returns a new [DomPropsMixin] that renders a `<tfoot>` tag with getters/setters for all DOM-related React props
  static DomProps tfoot([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'tfoot';

  /// Returns a new [DomPropsMixin] that renders a `<th>` tag with getters/setters for all DOM-related React props
  static DomProps th([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'th';

  /// Returns a new [DomPropsMixin] that renders a `<thead>` tag with getters/setters for all DOM-related React props
  static DomProps thead([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'thead';

  /// Returns a new [DomPropsMixin] that renders a `<time>` tag with getters/setters for all DOM-related React props
  static DomProps time([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'time';

  /// Returns a new [DomPropsMixin] that renders a `<title>` tag with getters/setters for all DOM-related React props
  static DomProps title([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'title';

  /// Returns a new [DomPropsMixin] that renders a `<tr>` tag with getters/setters for all DOM-related React props
  static DomProps tr([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'tr';

  /// Returns a new [DomPropsMixin] that renders a `<track>` tag with getters/setters for all DOM-related React props
  static DomProps track([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'track';

  /// Returns a new [DomPropsMixin] that renders an `<u>` tag with getters/setters for all DOM-related React props
  static DomProps u([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'u';

  /// Returns a new [DomPropsMixin] that renders an `<ul>` tag with getters/setters for all DOM-related React props
  static DomProps ul([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'ul';

  /// Returns a new [DomPropsMixin] that renders a `<var>` tag with getters/setters for all DOM-related React props
  static DomProps variable([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'variable';

  /// Returns a new [DomPropsMixin] that renders a `<video>` tag with getters/setters for all DOM-related React props
  static DomProps video([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'video';

  /// Returns a new [DomPropsMixin] that renders a `<wbr>` tag with getters/setters for all DOM-related React props
  static DomProps wbr([backingMap]) =>
      DomProps(backingMap)..$componentClass = 'wbr';
}
