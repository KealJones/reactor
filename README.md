# Reactor

[![Build Status](https://travis-ci.com/KealJones/reactor.svg?branch=master)](https://travis-ci.com/KealJones/reactor)

Reactor is a statically-typed Dart library wrapping around ReactJS for building user interfaces.

> Please Note: This package is in early stages of development and will change frequently while in major version 0

There are more stable React in Dart packages if you need consistency:

* [OverReact](https://github.com/workiva/over_react) (Uses react-dart under the hood)
* [react-dart](https://github.com/cleandart/react-dart)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

* Dart 3.1.0 or higher

### Running the example

First:
```
dart pub get
```

If needed:
```
dart pub global activate webdev
```

Then:
```
webdev serve
```
> Prior to dart 3.1.0 static interop had DDC issues.
> Related Github Issues: [49767](https://github.com/dart-lang/sdk/issues/49767), [49785](https://github.com/dart-lang/sdk/issues/49785), [51060](https://github.com/dart-lang/sdk/issues/51060)

### Using in your project

Coming Soon...

## Running the tests

```
pub run build_runner test
```

## Built With

* [Dart](https://dart.dev/) - The language
* [React](https://reactjs.org/) - The wrapped JavaScript library

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/kealjones/reactor/tags).

## Authors

* **Keal Jones** - [Github](https://github.com/kealjones)

See also the list of [contributors](https://github.com/kealjones/reactor/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

There are better and more comprehensive React in Dart packages:

* [OverReact](https://github.com/workiva/over_react)
* [react-dart](https://github.com/cleandart/react-dart)
