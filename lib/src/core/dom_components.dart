library reactor.core.dom_components;

import 'package:reactor/reactor.dart';

/// A class that provides namespacing for static DOM component factory methods, much like `React.DOM` in React JS.
abstract class Dom {
  /// Returns a new [DomPropsMixin] that renders an `<a>` tag with getters/setters for all DOM-related React props
  static DomProps a() => (DomProps()..$component = 'a');

  /// Returns a new [DomPropsMixin] that renders an `<abbr>` tag with getters/setters for all DOM-related React props
  static DomProps abbr() => (DomProps()..$component = 'abbr');

  /// Returns a new [DomPropsMixin] that renders an `<address>` tag with getters/setters for all DOM-related React props
  static DomProps address() => (DomProps()..$component = 'address');

  /// Returns a new [DomPropsMixin] that renders an `<area>` tag with getters/setters for all DOM-related React props
  static DomProps area() => (DomProps()..$component = 'area');

  /// Returns a new [DomPropsMixin] that renders an `<article>` tag with getters/setters for all DOM-related React props
  static DomProps article() => (DomProps()..$component = 'article');

  /// Returns a new [DomPropsMixin] that renders an `<aside>` tag with getters/setters for all DOM-related React props
  static DomProps aside() => (DomProps()..$component = 'aside');

  /// Returns a new [DomPropsMixin] that renders an `<audio>` tag with getters/setters for all DOM-related React props
  static DomProps audio() => (DomProps()..$component = 'audio');

  /// Returns a new [DomPropsMixin] that renders a `<b>` tag with getters/setters for all DOM-related React props
  static DomProps b() => (DomProps()..$component = 'b');

  /// Returns a new [DomPropsMixin] that renders a `<base>` tag with getters/setters for all DOM-related React props
  static DomProps base() => (DomProps()..$component = 'base');

  /// Returns a new [DomPropsMixin] that renders a `<bdi>` tag with getters/setters for all DOM-related React props
  static DomProps bdi() => (DomProps()..$component = 'bdi');

  /// Returns a new [DomPropsMixin] that renders a `<bdo>` tag with getters/setters for all DOM-related React props
  static DomProps bdo() => (DomProps()..$component = 'bdo');

  /// Returns a new [DomPropsMixin] that renders a `<big>` tag with getters/setters for all DOM-related React props
  static DomProps big() => (DomProps()..$component = 'big');

  /// Returns a new [DomPropsMixin] that renders a `<blockquote>` tag with getters/setters for all DOM-related React props
  static DomProps blockquote() => (DomProps()..$component = 'blockquote');

  /// Returns a new [DomPropsMixin] that renders a `<body>` tag with getters/setters for all DOM-related React props
  static DomProps body() => (DomProps()..$component = 'body');

  /// Returns a new [DomPropsMixin] that renders a `<br>` tag with getters/setters for all DOM-related React props
  static DomProps br() => (DomProps()..$component = 'br');

  /// Returns a new [DomPropsMixin] that renders a `<button>` tag with getters/setters for all DOM-related React props
  static DomProps button() => (DomProps()..$component = 'button');

  /// Returns a new [DomPropsMixin] that renders a `<canvas>` tag with getters/setters for all DOM-related React props
  static DomProps canvas() => (DomProps()..$component = 'canvas');

  /// Returns a new [DomPropsMixin] that renders a `<caption>` tag with getters/setters for all DOM-related React props
  static DomProps caption() => (DomProps()..$component = 'caption');

  /// Returns a new [DomPropsMixin] that renders a `<cite>` tag with getters/setters for all DOM-related React props
  static DomProps cite() => (DomProps()..$component = 'cite');

  /// Returns a new [DomPropsMixin] that renders a `<code>` tag with getters/setters for all DOM-related React props
  static DomProps code() => (DomProps()..$component = 'code');

  /// Returns a new [DomPropsMixin] that renders a `<col>` tag with getters/setters for all DOM-related React props
  static DomProps col() => (DomProps()..$component = 'col');

  /// Returns a new [DomPropsMixin] that renders a `<colgroup>` tag with getters/setters for all DOM-related React props
  static DomProps colgroup() => (DomProps()..$component = 'colgroup');

  /// Returns a new [DomPropsMixin] that renders a `<data>` tag with getters/setters for all DOM-related React props
  static DomProps data() => (DomProps()..$component = 'data');

  /// Returns a new [DomPropsMixin] that renders a `<datalist>` tag with getters/setters for all DOM-related React props
  static DomProps datalist() => (DomProps()..$component = 'datalist');

  /// Returns a new [DomPropsMixin] that renders a `<dd>` tag with getters/setters for all DOM-related React props
  static DomProps dd() => (DomProps()..$component = 'dd');

  /// Returns a new [DomPropsMixin] that renders a `<del>` tag with getters/setters for all DOM-related React props
  static DomProps del() => (DomProps()..$component = 'del');

  /// Returns a new [DomPropsMixin] that renders a `<details>` tag with getters/setters for all DOM-related React props
  static DomProps details() => (DomProps()..$component = 'details');

  /// Returns a new [DomPropsMixin] that renders a `<dfn>` tag with getters/setters for all DOM-related React props
  static DomProps dfn() => (DomProps()..$component = 'dfn');

  /// Returns a new [DomPropsMixin] that renders a `<dialog>` tag with getters/setters for all DOM-related React props
  static DomProps dialog() => (DomProps()..$component = 'dialog');

  /// Returns a new [DomPropsMixin] that renders a `<div>` tag with getters/setters for all DOM-related React props
  static DomProps div() => (DomProps()..$component = 'div');

  /// Returns a new [DomPropsMixin] that renders a `<dl>` tag with getters/setters for all DOM-related React props
  static DomProps dl() => (DomProps()..$component = 'dl');

  /// Returns a new [DomPropsMixin] that renders a `<dt>` tag with getters/setters for all DOM-related React props
  static DomProps dt() => (DomProps()..$component = 'dt');

  /// Returns a new [DomPropsMixin] that renders an `<em>` tag with getters/setters for all DOM-related React props
  static DomProps em() => (DomProps()..$component = 'em');

  /// Returns a new [DomPropsMixin] that renders an `<embed>` tag with getters/setters for all DOM-related React props
  static DomProps embed() => (DomProps()..$component = 'embed');

  /// Returns a new [DomPropsMixin] that renders a `<fieldset>` tag with getters/setters for all DOM-related React props
  static DomProps fieldset() => (DomProps()..$component = 'fieldset');

  /// Returns a new [DomPropsMixin] that renders a `<figcaption>` tag with getters/setters for all DOM-related React props
  static DomProps figcaption() => (DomProps()..$component = 'figcaption');

  /// Returns a new [DomPropsMixin] that renders a `<figure>` tag with getters/setters for all DOM-related React props
  static DomProps figure() => (DomProps()..$component = 'figure');

  /// Returns a new [DomPropsMixin] that renders a `<footer>` tag with getters/setters for all DOM-related React props
  static DomProps footer() => (DomProps()..$component = 'footer');

  /// Returns a new [DomPropsMixin] that renders a `<form>` tag with getters/setters for all DOM-related React props
  static DomProps form() => (DomProps()..$component = 'form');

  /// Returns a new [DomPropsMixin] that renders a `<h1>` tag with getters/setters for all DOM-related React props
  static DomProps h1() => (DomProps()..$component = 'h1');

  /// Returns a new [DomPropsMixin] that renders a `<h2>` tag with getters/setters for all DOM-related React props
  static DomProps h2() => (DomProps()..$component = 'h2');

  /// Returns a new [DomPropsMixin] that renders a `<h3>` tag with getters/setters for all DOM-related React props
  static DomProps h3() => (DomProps()..$component = 'h3');

  /// Returns a new [DomPropsMixin] that renders a `<h4>` tag with getters/setters for all DOM-related React props
  static DomProps h4() => (DomProps()..$component = 'h4');

  /// Returns a new [DomPropsMixin] that renders a `<h5>` tag with getters/setters for all DOM-related React props
  static DomProps h5() => (DomProps()..$component = 'h5');

  /// Returns a new [DomPropsMixin] that renders a `<h6>` tag with getters/setters for all DOM-related React props
  static DomProps h6() => (DomProps()..$component = 'h6');

  /// Returns a new [DomPropsMixin] that renders a `<head>` tag with getters/setters for all DOM-related React props
  static DomProps head() => (DomProps()..$component = 'head');

  /// Returns a new [DomPropsMixin] that renders a `<header>` tag with getters/setters for all DOM-related React props
  static DomProps header() => (DomProps()..$component = 'header');

  /// Returns a new [DomPropsMixin] that renders a `<hr>` tag with getters/setters for all DOM-related React props
  static DomProps hr() => (DomProps()..$component = 'hr');

  /// Returns a new [DomPropsMixin] that renders a `<html>` tag with getters/setters for all DOM-related React props
  static DomProps html() => (DomProps()..$component = 'html');

  /// Returns a new [DomPropsMixin] that renders an `<i>` tag with getters/setters for all DOM-related React props
  static DomProps i() => (DomProps()..$component = 'i');

  /// Returns a new [DomPropsMixin] that renders an `<iframe>` tag with getters/setters for all DOM-related React props
  static DomProps iframe() => (DomProps()..$component = 'iframe');

  /// Returns a new [DomPropsMixin] that renders an `<img>` tag with getters/setters for all DOM-related React props
  static DomProps img() => (DomProps()..$component = 'img');

  /// Returns a new [DomPropsMixin] that renders an `<input>` tag with getters/setters for all DOM-related React props
  static DomProps input() => (DomProps()..$component = 'input');

  /// Returns a new [DomPropsMixin] that renders an `<ins>` tag with getters/setters for all DOM-related React props
  static DomProps ins() => (DomProps()..$component = 'ins');

  /// Returns a new [DomPropsMixin] that renders a `<kbd>` tag with getters/setters for all DOM-related React props
  static DomProps kbd() => (DomProps()..$component = 'kbd');

  /// Returns a new [DomPropsMixin] that renders a `<keygen>` tag with getters/setters for all DOM-related React props
  static DomProps keygen() => (DomProps()..$component = 'keygen');

  /// Returns a new [DomPropsMixin] that renders a `<label>` tag with getters/setters for all DOM-related React props
  static DomProps label() => (DomProps()..$component = 'label');

  /// Returns a new [DomPropsMixin] that renders a `<legend>` tag with getters/setters for all DOM-related React props
  static DomProps legend() => (DomProps()..$component = 'legend');

  /// Returns a new [DomPropsMixin] that renders a `<li>` tag with getters/setters for all DOM-related React props
  static DomProps li() => (DomProps()..$component = 'li');

  /// Returns a new [DomPropsMixin] that renders a `<link>` tag with getters/setters for all DOM-related React props
  static DomProps link() => (DomProps()..$component = 'link');

  /// Returns a new [DomPropsMixin] that renders a `<main>` tag with getters/setters for all DOM-related React props
  static DomProps main() => (DomProps()..$component = 'main');

  /// Returns a new [DomPropsMixin] that renders a `<map>` tag with getters/setters for all DOM-related React props
  static DomProps map() => (DomProps()..$component = 'map');

  /// Returns a new [DomPropsMixin] that renders a `<mark>` tag with getters/setters for all DOM-related React props
  static DomProps mark() => (DomProps()..$component = 'mark');

  /// Returns a new [DomPropsMixin] that renders a `<menu>` tag with getters/setters for all DOM-related React props
  static DomProps menu() => (DomProps()..$component = 'menu');

  /// Returns a new [DomPropsMixin] that renders a `<menuitem>` tag with getters/setters for all DOM-related React props
  static DomProps menuitem() => (DomProps()..$component = 'menuitem');

  /// Returns a new [DomPropsMixin] that renders a `<meta>` tag with getters/setters for all DOM-related React props
  static DomProps meta() => (DomProps()..$component = 'meta');

  /// Returns a new [DomPropsMixin] that renders a `<meter>` tag with getters/setters for all DOM-related React props
  static DomProps meter() => (DomProps()..$component = 'meter');

  /// Returns a new [DomPropsMixin] that renders a `<nav>` tag with getters/setters for all DOM-related React props
  static DomProps nav() => (DomProps()..$component = 'nav');

  /// Returns a new [DomPropsMixin] that renders a `<noscript>` tag with getters/setters for all DOM-related React props
  static DomProps noscript() => (DomProps()..$component = 'noscript');

  /// Returns a new [DomPropsMixin] that renders an `<object>` tag with getters/setters for all DOM-related React props
  static DomProps object() => (DomProps()..$component = 'object');

  /// Returns a new [DomPropsMixin] that renders an `<ol>` tag with getters/setters for all DOM-related React props
  static DomProps ol() => (DomProps()..$component = 'ol');

  /// Returns a new [DomPropsMixin] that renders an `<optgroup>` tag with getters/setters for all DOM-related React props
  static DomProps optgroup() => (DomProps()..$component = 'optgroup');

  /// Returns a new [DomPropsMixin] that renders an `<option>` tag with getters/setters for all DOM-related React props
  static DomProps option() => (DomProps()..$component = 'option');

  /// Returns a new [DomPropsMixin] that renders an `<output>` tag with getters/setters for all DOM-related React props
  static DomProps output() => (DomProps()..$component = 'output');

  /// Returns a new [DomPropsMixin] that renders a `<p>` tag with getters/setters for all DOM-related React props
  static DomProps p() => (DomProps()..$component = 'p');

  /// Returns a new [DomPropsMixin] that renders a `<param>` tag with getters/setters for all DOM-related React props
  static DomProps param() => (DomProps()..$component = 'param');

  /// Returns a new [DomPropsMixin] that renders a `<picture>` tag with getters/setters for all DOM-related React props
  static DomProps picture() => (DomProps()..$component = 'picture');

  /// Returns a new [DomPropsMixin] that renders a `<pre>` tag with getters/setters for all DOM-related React props
  static DomProps pre() => (DomProps()..$component = 'pre');

  /// Returns a new [DomPropsMixin] that renders a `<progress>` tag with getters/setters for all DOM-related React props
  static DomProps progress() => (DomProps()..$component = 'progress');

  /// Returns a new [DomPropsMixin] that renders a `<q>` tag with getters/setters for all DOM-related React props
  static DomProps q() => (DomProps()..$component = 'q');

  /// Returns a new [DomPropsMixin] that renders a `<rp>` tag with getters/setters for all DOM-related React props
  static DomProps rp() => (DomProps()..$component = 'rp');

  /// Returns a new [DomPropsMixin] that renders a `<rt>` tag with getters/setters for all DOM-related React props
  static DomProps rt() => (DomProps()..$component = 'rt');

  /// Returns a new [DomPropsMixin] that renders a `<ruby>` tag with getters/setters for all DOM-related React props
  static DomProps ruby() => (DomProps()..$component = 'ruby');

  /// Returns a new [DomPropsMixin] that renders a `<s>` tag with getters/setters for all DOM-related React props
  static DomProps s() => (DomProps()..$component = 's');

  /// Returns a new [DomPropsMixin] that renders a `<samp>` tag with getters/setters for all DOM-related React props
  static DomProps samp() => (DomProps()..$component = 'samp');

  /// Returns a new [DomPropsMixin] that renders a `<script>` tag with getters/setters for all DOM-related React props
  static DomProps script() => (DomProps()..$component = 'script');

  /// Returns a new [DomPropsMixin] that renders a `<section>` tag with getters/setters for all DOM-related React props
  static DomProps section() => (DomProps()..$component = 'section');

  /// Returns a new [DomPropsMixin] that renders a `<select>` tag with getters/setters for all DOM-related React props
  static DomProps select() => (DomProps()..$component = 'select');

  /// Returns a new [DomPropsMixin] that renders a `<small>` tag with getters/setters for all DOM-related React props
  static DomProps small() => (DomProps()..$component = 'small');

  /// Returns a new [DomPropsMixin] that renders a `<source>` tag with getters/setters for all DOM-related React props
  static DomProps source() => (DomProps()..$component = 'source');

  /// Returns a new [DomPropsMixin] that renders a `<span>` tag with getters/setters for all DOM-related React props
  static DomProps span() => (DomProps()..$component = 'span');

  /// Returns a new [DomPropsMixin] that renders a `<strong>` tag with getters/setters for all DOM-related React props
  static DomProps strong() => (DomProps()..$component = 'strong');

  /// Returns a new [DomPropsMixin] that renders a `<style>` tag with getters/setters for all DOM-related React props
  static DomProps style() => (DomProps()..$component = 'style');

  /// Returns a new [DomPropsMixin] that renders a `<sub>` tag with getters/setters for all DOM-related React props
  static DomProps sub() => (DomProps()..$component = 'sub');

  /// Returns a new [DomPropsMixin] that renders a `<summary>` tag with getters/setters for all DOM-related React props
  static DomProps summary() => (DomProps()..$component = 'summary');

  /// Returns a new [DomPropsMixin] that renders a `<sup>` tag with getters/setters for all DOM-related React props
  static DomProps sup() => (DomProps()..$component = 'sup');

  /// Returns a new [DomPropsMixin] that renders a `<table>` tag with getters/setters for all DOM-related React props
  static DomProps table() => (DomProps()..$component = 'table');

  /// Returns a new [DomPropsMixin] that renders a `<tbody>` tag with getters/setters for all DOM-related React props
  static DomProps tbody() => (DomProps()..$component = 'tbody');

  /// Returns a new [DomPropsMixin] that renders a `<td>` tag with getters/setters for all DOM-related React props
  static DomProps td() => (DomProps()..$component = 'td');

  /// Returns a new [DomPropsMixin] that renders a `<textarea>` tag with getters/setters for all DOM-related React props
  static DomProps textarea() => (DomProps()..$component = 'textarea');

  /// Returns a new [DomPropsMixin] that renders a `<tfoot>` tag with getters/setters for all DOM-related React props
  static DomProps tfoot() => (DomProps()..$component = 'tfoot');

  /// Returns a new [DomPropsMixin] that renders a `<th>` tag with getters/setters for all DOM-related React props
  static DomProps th() => (DomProps()..$component = 'th');

  /// Returns a new [DomPropsMixin] that renders a `<thead>` tag with getters/setters for all DOM-related React props
  static DomProps thead() => (DomProps()..$component = 'thead');

  /// Returns a new [DomPropsMixin] that renders a `<time>` tag with getters/setters for all DOM-related React props
  static DomProps time() => (DomProps()..$component = 'time');

  /// Returns a new [DomPropsMixin] that renders a `<title>` tag with getters/setters for all DOM-related React props
  static DomProps title() => (DomProps()..$component = 'title');

  /// Returns a new [DomPropsMixin] that renders a `<tr>` tag with getters/setters for all DOM-related React props
  static DomProps tr() => (DomProps()..$component = 'tr');

  /// Returns a new [DomPropsMixin] that renders a `<track>` tag with getters/setters for all DOM-related React props
  static DomProps track() => (DomProps()..$component = 'track');

  /// Returns a new [DomPropsMixin] that renders an `<u>` tag with getters/setters for all DOM-related React props
  static DomProps u() => (DomProps()..$component = 'u');

  /// Returns a new [DomPropsMixin] that renders an `<ul>` tag with getters/setters for all DOM-related React props
  static DomProps ul() => (DomProps()..$component = 'ul');

  /// Returns a new [DomPropsMixin] that renders a `<var>` tag with getters/setters for all DOM-related React props
  static DomProps variable() => (DomProps()..$component = 'variable');

  /// Returns a new [DomPropsMixin] that renders a `<video>` tag with getters/setters for all DOM-related React props
  static DomProps video() => (DomProps()..$component = 'video');

  /// Returns a new [DomPropsMixin] that renders a `<wbr>` tag with getters/setters for all DOM-related React props
  static DomProps wbr() => (DomProps()..$component = 'wbr');
}
