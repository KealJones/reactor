import 'dart:math';
import 'dart:collection';

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
        @ReactorProps()
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
    MethodElement constructorMethod =
        element.methods.singleWhere((method) => method.name == 'constructor', orElse: () => null);
    return '''
      class _${element.name} extends ${element.name} {
        _${element.name}() {
          this.reactComponentClass = REACTOR_SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.JsComponentBuilder(displayName: '${getComponentShortName(element)}' ${constructorMethod != null ? ', constructor: ' + constructorMethod.name : ''});
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

  List<String> componentLifecycleMethods = [
    'getDerivedStateFromError',
    'getDerivedStateFromProps',
    'getSnapshotBeforeUpdate',
    'shouldComponentUpdate',
    'render',
    'componentDidMount',
    'componentDidUpdate',
    'componentWillUnmount',
    'componentDidCatch'
  ];
  Map<String, MethodElement> implementedMethods = {};
  componentLifecycleMethods.forEach((String methodString) async {
    MethodElement method = element.lookUpInheritedMethod(methodString, element.library);
    if (method.enclosingElement.name != 'Component' && method.enclosingElement.name != 'Component') {
      implementedMethods[methodString] = method;
    }
  });

  element.methods.forEach((MethodElement method) {
    if (componentLifecycleMethods.contains(method.name)) {
      implementedMethods[method.name] = method;
    }
  });
  implementedMethods.values.forEach((MethodElement method) {
    content += '..${method.name} = ${createInteropWrapperMethod(method, element)}\n';
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

List<FieldElement> merge(List<FieldElement> a, List<FieldElement> b) {
    List<FieldElement> output = [];

    var min_length = min(a.length, b.length);
    var max_length = max(a.length, b.length);

    for(var i = 0; i < min_length; i++) {
      output.add(a[i]);
      output.add(b[i]);
    }

    List<FieldElement> longer = a.length > b.length ? a : b;

    for(var i = min_length; i < max_length; i++) {
      output.add(longer[i]);
    }

    return output;
  }

createPropsFromElement(ClassElement element, [_]) {
  //List<FieldElement> allFields = element.fields;
  final allFields = LinkedHashSet<Element>(
      equals: (Element e1, Element e2) => e1.name == e2.name,
      hashCode: (Element e) => e.name.hashCode);

  String content = 'extension Generated${element.name.replaceAll('_', '')} on ${element.name} {';
  allFields.addAll(element.accessors);
  allFields.addAll(element.fields);
  element.interfaces.forEach((interface) {
    allFields.addAll(interface.element.fields);
  });

  allFields.forEach((field) {
      if (field.hasOverride || field is PropertyAccessorElement){
        // if this is the case lets assume they are doing something special...
        return;
      }
      //content += 'whatever.${field.name}';
      content += toGetterString(field);
      content += toSetterString(field);
      content += '\n';
    });
  content += '}';
  return content;
}

 createStateFromElement(ClassElement element, [_]) => createPropsFromElement(element, _);//{
//   String content = 'extension Generated${element.name.replaceAll('_', '')} on ${element.name} {';
//   //String content = 'class ${element.name.replaceAll('_', '')} extends ${element.name} {';
//   element.interfaces.forEach((interface) {
//     interface.element.fields.forEach((field) {
//        if (field.hasOverride) return;
//       //content += 'whatever.${field.name}';
//       content += toGetterString(field);
//       content += toSetterString(field);
//       content += '\n';
//     });
//   });
//   /*content += '''
    /*_${element.name}();
    _${element.name}.fromJsObj(v){
      this.fromJs(v);
    }*/
//   ''';*/
//   content += '}';
//   return content;
// }

toSetterString(FieldElement field, [forWhat = '\$backingMap']) {
  String wrappedField() {
    var unwrappedFieled = 'v';
    if (field.type is Function) {
      return 'allowInterop(v)';
    } else if (field.type is Map) {
      return 'jsify(v)';
    }
    return unwrappedFieled;
  }

  return '''
  set ${field.name}(${field.type ?? 'dynamic'} v) => $forWhat[\'${field.name}\'] = ${wrappedField()};
  ''';
}

toGetterString(FieldElement field, [forWhat = '\$backingMap']) {
  return '''
  ${field.type ?? 'dynamic'} get ${field.name} => $forWhat[\'${field.name}\']; // ${field.hasOverride}
  ''';
}
