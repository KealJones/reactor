import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';

getComponentShortName(Element element){
  return element.name.replaceAll('Component', '');
}

getComponentStateName(Element element){
  return getComponentGenerics(element)[1];
}

getComponentPropsName(Element element){
  if (element is ClassElement){
    return getComponentGenerics(element)[0];
  }
  return '_${getComponentShortName(element)}Props';
}

getComponentGenerics(Element element){
  if (element is ClassElement){
    return element.supertype.typeArguments.map((dartType) => dartType.toString()).toList();
  }
  return ['UiProps', 'UiState'];
}

createComponentFromElement(Element _element, [BuildStep buildStep]) async {
  Element element = _element;
  if (element is FunctionElement) {
    final args = element.parameters;
    final destructuredPropArgs = args.where((arg) => !arg.name.toLowerCase().contains('props')).toList();
    return '''
      class _${getComponentPropsName(element)}Interface {
        ${destructuredPropArgs.map((arg) {
          return '${arg.type.name ?? 'var'} ${arg.name};\n';
        }).join('\n')}
      }
      class _${getComponentPropsName(element)} extends UiProps implements _${getComponentPropsName(element)}Interface {}

      // Component Factory
      _${getComponentPropsName(element)} _${getComponentShortName(element)}([Map backingMap]) {
        var interopFunction = allowInterop((props, context){
          _${getComponentPropsName(element)} tProps = _${getComponentPropsName(element)}().fromJs(props);
          return ${element.name}(tProps,
            ${destructuredPropArgs.map((arg) {
              return 'tProps.${arg.name},';
            }).join(' ')} 
          );
        });
        ReactorJsUtils.setInteropComponentName(interopFunction, '${getComponentShortName(element)}');
        return new _${getComponentPropsName(element)}()
          ..\$backingMap = backingMap ?? JsBackedMap()
          ..\$componentClass = interopFunction;
      }
    ''';
  }

  if (element is ClassElement) {
    return '''
      class _${element.name} extends ${element.name} {
        _${element.name}(){
          this.reactorComponent = ReactComponentBuilder(displayName: '${getComponentShortName(element)}');
          reactorComponent
          ${await createComponentJsMethods(element, buildStep)};
        }

        @override
        ${getComponentPropsName(element)} get props => ${getComponentPropsName(element)}().fromJs(reactorComponent.props);

        @override
        ${getComponentStateName(element)} get state => ${getComponentStateName(element)}().fromJs(reactorComponent.state);
      }

      // Component Instance
      ${getComponentPropsName(element)} _${getComponentShortName(element)}([Map backingMap]) {
        var _dartComp = _${element.name}();
        return new ${getComponentPropsName(element)}()
          ..\$backingMap = backingMap ?? JsBackedMap()
          ..\$componentClass = _dartComp.reactorComponent.reactClass;
      }
    ''';
  }
}

createComponentJsMethods(ClassElement element, [BuildStep buildStep]) async {
  // var resolvedLibrary = await element.session.getResolvedLibraryByElement(element.library);
  // var declaration = resolvedLibrary.getElementDeclaration(element);
  // var unit = declaration.resolvedUnit.unit;
  String content = '';
  
  List<String> componentLifecycleMethods = ['getDerivedStateFromError','getDerivedStateFromProps','getSnapshotBeforeUpdate','shouldComponentUpdate','render','componentDidMount','componentDidUpdate','componentWillUnmount','componentDidCatch'];
  Map<String, MethodElement> implementedMethods = {};
  componentLifecycleMethods.forEach((String methodString) async {//unit.declarations.forEach((CompilationUnitMember dec){
    MethodElement method = element.lookUpInheritedMethod(methodString, element.library);
    if (method.enclosingElement.name != 'UiComponent' && method.enclosingElement.name != 'UiComponent') {
      implementedMethods[methodString] = method;
    }
  });

  element.methods.forEach((MethodElement method){
    if(componentLifecycleMethods.contains(method.name)){
      implementedMethods[method.name] = method;
    }
  });
  implementedMethods.values.forEach((MethodElement method){
    //setProperty(this, 'render', allowInterop(this.render));
    content += '..${method.name} = ${createInteropWrapperMethod(method, element)}\n';
  });
  return content;
}

createInteropMethodArgList(List<ParameterElement> parameters,{withWrapper: false, element}){
  String content = '';
  parameters.forEach((param){
    if (withWrapper){
      if (param.name.toLowerCase().contains('props')){
        content += '${getComponentPropsName(element)}().fromJs(_js${param.name}), ';
      } else if (param.name.toLowerCase().contains('state')){
        content += '${getComponentStateName(element)}().fromJs(_js${param.name}), ';
      } else {
        content += '_js${param.name}, ';
      }

    } else {
      content += '_js${param.name}, ';
    }
  });
  return content.replaceRange(content.length-2, null, '');
}

createInteropWrapperMethod(MethodElement method, ClassElement element){
  String methodToInvoke = '${method.name}';
  bool isMapReturn = methodToInvoke.contains('getDerivedState');
  if (method.parameters.length == 0){
    return methodToInvoke;
  }
  String returnValue = '$methodToInvoke(${createInteropMethodArgList(method.parameters, withWrapper:true, element: element)})';
  return '''(${createInteropMethodArgList(method.parameters)}${method.name =='shouldComponentUpdate' ? ', nextContext' : ''}){
    return ${isMapReturn ? returnValue + '.\$backingMap.jsObject' : returnValue};
  }''';
}

createPropsFromElement(ClassElement element) {
  String content = 'var something = (){ var whatever = new ${element.name}();';
  //String content = 'class ${element.name.replaceAll('_', '')} extends ${element.name} {';
  element.fields.forEach((FieldElement field){
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
  element.fields.forEach((FieldElement field){
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

toSetterString(FieldElement field, [forWhat = 'props']){
  return '''@override
  set ${field.name}(${field.type ?? 'dynamic'} v) => $forWhat[\'${field.name}\'] = v;
  ''';
}

toGetterString(FieldElement field, [forWhat = 'props']){
  return '''@override
  ${field.type != null ? "${field.type} " : ""}get ${field.name} => $forWhat[\'${field.name}\'];
  ''';
}

