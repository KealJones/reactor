import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';

getComponentShortName(Element element) {
  return element.name.replaceAll('Component', '');
}

getComponentStateName(Element element) {
  return getComponentGenerics(element)[1];
}

getComponentPropsName(Element element) {
  if (element is ClassElement) {
    return getComponentGenerics(element)[0];
  }
  return '_${getComponentShortName(element)}Props';
}

getComponentGenerics(Element element) {
  if (element is ClassElement) {
    return element.supertype.typeArguments.map((dartType) => dartType.toString()).toList();
  }
  return ['Props', 'State'];
}

createComponentFromElement(Element _element, [BuildStep buildStep]) async {
  Element element = _element;
  if (element is FunctionElement) {
    var content = '';
    final args = element.parameters;
    final destructuredPropArgs = args.where((arg) => !(arg.name.toLowerCase() == 'props')).toList();
    final propsArgs = args.where((arg) => arg.name.toLowerCase() == 'props').toList();
    var functionalPropsName = '${getComponentPropsName(element)}';
    if (destructuredPropArgs.isNotEmpty) {
      content = '''
        class ${getComponentPropsName(element)}Interface {
          ${destructuredPropArgs.map((arg) {
        return '${arg.type.name ?? 'var'} ${arg.name};\n';
      }).join('\n')}
        }
        class ${getComponentPropsName(element)} extends Props implements ${getComponentPropsName(element)}Interface {}
        ''';
    } else {
      if (propsArgs.isNotEmpty) {
        functionalPropsName = (propsArgs.first.type.name == 'dynamic' ? 'Props' : propsArgs.first.type.name ?? 'Props');
      } else {
        functionalPropsName = 'Props';
      }
    }
    return content +
        '''
      // Component Factory
      $functionalPropsName _${getComponentShortName(element)}([Map backingMap]) {
        var interopFunction = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.allowInterop((props, [context]){
          ${(args.isNotEmpty && args[0].name == 'props') ? '$functionalPropsName tProps = $functionalPropsName().fromJs(props);' : ''}
          return ${element.name}(
            ${args.map((arg) {
          if (arg.name == 'props') {
            return 'tProps, ';
          }
          return 'tProps.${arg.name},';
        }).join(' ')} 
          );
        });
        REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.define(interopFunction, 'name', '${getComponentShortName(element)}');
        return $functionalPropsName()
          ..\$backingMap = JsBackedMap.from(backingMap ?? {})
          ..\$componentClass = interopFunction;
      }
    ''';
  }

  if (element is ClassElement) {
    return '''
      class _${element.name} extends ${element.name} {
        _${element.name}() {
          this.reactComponentClass = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.JsComponentBuilder(displayName: '${getComponentShortName(element)}', initialState: initialState);
          reactComponentClass
          ${await createComponentJsMethods(element, buildStep)};
        }

        @override
        ${getComponentPropsName(element)} get props => ${getComponentPropsName(element)}().fromJs(reactComponentClass.props);

        @override
        ${getComponentStateName(element)} get state => ${getComponentStateName(element)}().fromJs(reactComponentClass.state);
      }

      // Component Instance
      ${getComponentPropsName(element)} _${getComponentShortName(element)}([Map backingMap]) {
        var _dartComp = _${element.name}();
        return ${getComponentPropsName(element)}()
          ..\$backingMap = JsBackedMap.from(backingMap ?? {})
          ..\$componentClass = _dartComp.reactComponentClass.reactClass;
      }
    ''';
  }
}

createComponentJsMethods(ClassElement element, [BuildStep buildStep]) async {
  String content = '';

  List<String> componentLifecycleStatics = [
    'defaultProps'
  ];
  List<String> componentLifecycleMethods = [
    'getDerivedStateFromError',
    'getDerivedStateFromProps',
    'getSnapshotBeforeUpdate',
    'shouldComponentUpdate',
    'render',
    'componentDidMount',
    'componentDidUpdate',
    'componentWillUnmount',
    'componentDidCatch',
  ];
  Map<String, dynamic> implementedMethods = {};

  element.accessors.forEach((PropertyAccessorElement accessor) {
    if (componentLifecycleStatics.contains(accessor.name)) {
      implementedMethods[accessor.name] = '${accessor.name}';
    }
  });

  element.methods.forEach((MethodElement method) {
    if (componentLifecycleMethods.contains(method.name)) {
      implementedMethods[method.name] = createInteropWrapperMethod(method, element);
    }
  });

  implementedMethods.forEach((String key, dynamic method) {
    content += '..$key = $method\n';
  });
  return content;
}

createInteropMethodArgList(List<ParameterElement> parameters, {withWrapper = false, element}) {
  String content = '';
  parameters.forEach((param) {
    if (withWrapper) {
      if (param.name.toLowerCase().contains('props')) {
        content += '${getComponentPropsName(element)}().fromJs(_js${param.name}), ';
      } else if (param.name.toLowerCase().contains('state')) {
        content += '${getComponentStateName(element)}().fromJs(_js${param.name}), ';
      } else {
        content += '_js${param.name}, ';
      }
    } else {
      content += '_js${param.name}, ';
    }
  });
  return content.replaceRange(content.length - 2, null, '');
}

createInteropWrapperMethod(MethodElement method, ClassElement element) {
  String methodToInvoke = '${method.name}';
  bool isMapReturn = methodToInvoke.contains('getDerivedState');
  if (method.parameters.isEmpty) {
    return methodToInvoke;
  }
  String returnValue =
      '$methodToInvoke(${createInteropMethodArgList(method.parameters, withWrapper: true, element: element)})';
  return '''(${createInteropMethodArgList(method.parameters)}${method.name == 'shouldComponentUpdate' ? ', nextContext' : ''}){
    return ${isMapReturn ? returnValue + '.\$backingMap.jsObject' : returnValue};
  }''';
}

createPropsFromElement(ClassElement element) {
  String content = 'var something = (){ var whatever = new ${element.name}();';
  //String content = 'class ${element.name.replaceAll('_', '')} extends ${element.name} {';
  element.fields.forEach((FieldElement field) {
    content += 'whatever.${field.name}';
    // content += toGetterString(field, 'props');
    // content += toSetterString(field, 'props');
    content += '\n';
  });
  /*content += '''
    /*_${element.name}();
    _${element.name}.fromJsObj(v){
      this.fromJs(v);
    }*/
  ''';*/
  content += '};';
  return content;
}

createStateFromElement(ClassElement element) {
  String content = 'class ${element.name.replaceAll('_', '')} extends ${element.name} {';
  element.fields.forEach((FieldElement field) {
    // content += toGetterString(field, 'state');
    // content += toSetterString(field, 'state');
    content += '\n';
  });
  /*content += '''
    /*_${element.name}();
    _${element.name}.fromJsObj(v){
      this.fromJs(v);
    }*/
  ''';*/
  content += '}';
  return content;
}

toSetterString(FieldElement field, [forWhat = 'props']) {
  return '''@override
  set ${field.name}(${field.type ?? 'dynamic'} v) => $forWhat[\'${field.name}\'] = v;
  ''';
}

toGetterString(FieldElement field, [forWhat = 'props']) {
  return '''@override
  ${field.type != null ? "${field.type} " : ""}get ${field.name} => $forWhat[\'${field.name}\'];
  ''';
}
