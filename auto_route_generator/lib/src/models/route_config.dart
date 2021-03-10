import 'route_parameter_config.dart';

import '../../utils.dart';
import 'importable_type.dart';
import 'router_config.dart';

/// holds the extracted route configs
/// to be used in [RouterClassGenerator]

class RouteConfig {
  final String? name;
  final String pathName;
  final List<PathParamConfig> pathParams;
  final bool initial;
  final bool? fullscreenDialog;
  final bool? fullMatch;
  final bool? customRouteOpaque;
  final bool? customRouteBarrierDismissible;
  final String? customRouteBarrierLabel;
  final bool? maintainState;
  final ImportableType? pageType;
  final String className;
  final ImportableType? returnType;
  final List<ParamConfig> parameters;
  final ImportableType? transitionBuilder;
  final ImportableType? customRouteBuilder;
  final String? redirectTo;
  final bool? usesTabsRouter;
  final int? reverseDurationInMilliseconds;
  final int? durationInMilliseconds;
  final int routeType;
  final List<ImportableType> guards;
  final String? cupertinoNavTitle;
  final bool hasWrapper;
  final String? replacementInRouteName;
  final RouterConfig? childRouterConfig;
  final bool hasConstConstructor;

  RouteConfig({
    this.name,
    required this.pathName,
    this.pathParams = const [],
    this.initial = false,
    this.fullscreenDialog,
    this.fullMatch,
    this.customRouteOpaque,
    this.customRouteBarrierDismissible,
    this.customRouteBarrierLabel,
    this.maintainState,
    this.pageType,
    required this.className,
    this.parameters = const [],
    this.transitionBuilder,
    this.customRouteBuilder,
    this.redirectTo,
    this.usesTabsRouter,
    this.durationInMilliseconds,
    this.reverseDurationInMilliseconds,
    this.returnType,
    this.routeType = RouteType.material,
    this.guards = const [],
    this.cupertinoNavTitle,
    this.hasWrapper = false,
    this.replacementInRouteName,
    this.childRouterConfig,
    this.hasConstConstructor = false,
  });

  RouteConfig copyWith({
    String? name,
    String? pathName,
    List<PathParamConfig>? pathParams,
    bool? initial,
    bool? fullscreenDialog,
    bool? fullMatch,
    bool? customRouteOpaque,
    bool? customRouteBarrierDismissible,
    String? customRouteBarrierLabel,
    bool? maintainState,
    ImportableType? pageType,
    String? className,
    ImportableType? returnType,
    List<ParamConfig>? parameters,
    ImportableType? transitionBuilder,
    ImportableType? customRouteBuilder,
    String? redirectTo,
    bool? usesTabsRouter,
    int? reverseDurationInMilliseconds,
    int? durationInMilliseconds,
    int? routeType,
    List<ImportableType>? guards,
    String? cupertinoNavTitle,
    bool? hasWrapper,
    String? replacementInRouteName,
    RouterConfig? childRouterConfig,
    bool? hasConstConstructor,
  }) {
    if ((name == null || identical(name, this.name)) &&
        (pathName == null || identical(pathName, this.pathName)) &&
        (pathParams == null || identical(pathParams, this.pathParams)) &&
        (initial == null || identical(initial, this.initial)) &&
        (fullscreenDialog == null || identical(fullscreenDialog, this.fullscreenDialog)) &&
        (fullMatch == null || identical(fullMatch, this.fullMatch)) &&
        (customRouteOpaque == null || identical(customRouteOpaque, this.customRouteOpaque)) &&
        (customRouteBarrierDismissible == null ||
            identical(customRouteBarrierDismissible, this.customRouteBarrierDismissible)) &&
        (customRouteBarrierLabel == null || identical(customRouteBarrierLabel, this.customRouteBarrierLabel)) &&
        (maintainState == null || identical(maintainState, this.maintainState)) &&
        (pageType == null || identical(pageType, this.pageType)) &&
        (className == null || identical(className, this.className)) &&
        (returnType == null || identical(returnType, this.returnType)) &&
        (parameters == null || identical(parameters, this.parameters)) &&
        (transitionBuilder == null || identical(transitionBuilder, this.transitionBuilder)) &&
        (customRouteBuilder == null || identical(customRouteBuilder, this.customRouteBuilder)) &&
        (redirectTo == null || identical(redirectTo, this.redirectTo)) &&
        (usesTabsRouter == null || identical(usesTabsRouter, this.usesTabsRouter)) &&
        (reverseDurationInMilliseconds == null ||
            identical(reverseDurationInMilliseconds, this.reverseDurationInMilliseconds)) &&
        (durationInMilliseconds == null || identical(durationInMilliseconds, this.durationInMilliseconds)) &&
        (routeType == null || identical(routeType, this.routeType)) &&
        (guards == null || identical(guards, this.guards)) &&
        (cupertinoNavTitle == null || identical(cupertinoNavTitle, this.cupertinoNavTitle)) &&
        (hasWrapper == null || identical(hasWrapper, this.hasWrapper)) &&
        (replacementInRouteName == null || identical(replacementInRouteName, this.replacementInRouteName)) &&
        (childRouterConfig == null || identical(childRouterConfig, this.childRouterConfig)) &&
        (hasConstConstructor == null || identical(hasConstConstructor, this.hasConstConstructor))) {
      return this;
    }

    return RouteConfig(
      name: name ?? this.name,
      pathName: pathName ?? this.pathName,
      pathParams: pathParams ?? this.pathParams,
      initial: initial ?? this.initial,
      fullscreenDialog: fullscreenDialog ?? this.fullscreenDialog,
      fullMatch: fullMatch ?? this.fullMatch,
      customRouteOpaque: customRouteOpaque ?? this.customRouteOpaque,
      customRouteBarrierDismissible: customRouteBarrierDismissible ?? this.customRouteBarrierDismissible,
      customRouteBarrierLabel: customRouteBarrierLabel ?? this.customRouteBarrierLabel,
      maintainState: maintainState ?? this.maintainState,
      pageType: pageType ?? this.pageType,
      className: className ?? this.className,
      returnType: returnType ?? this.returnType,
      parameters: parameters ?? this.parameters,
      transitionBuilder: transitionBuilder ?? this.transitionBuilder,
      customRouteBuilder: customRouteBuilder ?? this.customRouteBuilder,
      redirectTo: redirectTo ?? this.redirectTo,
      usesTabsRouter: usesTabsRouter ?? this.usesTabsRouter,
      reverseDurationInMilliseconds: reverseDurationInMilliseconds ?? this.reverseDurationInMilliseconds,
      durationInMilliseconds: durationInMilliseconds ?? this.durationInMilliseconds,
      routeType: routeType ?? this.routeType,
      guards: guards ?? this.guards,
      cupertinoNavTitle: cupertinoNavTitle ?? this.cupertinoNavTitle,
      hasWrapper: hasWrapper ?? this.hasWrapper,
      replacementInRouteName: replacementInRouteName ?? this.replacementInRouteName,
      childRouterConfig: childRouterConfig ?? this.childRouterConfig,
      hasConstConstructor: hasConstConstructor ?? this.hasConstConstructor,
    );
  }

  String get argumentsHolderClassName {
    return '${className}Arguments';
  }

  String get templateName {
    final routeName = name ?? "${toLowerCamelCase(className)}Route";
    return pathName.contains(":") ? '_$routeName' : routeName;
  }

  bool get isParent => childRouterConfig != null;

  List<ParamConfig> get argParams {
    return parameters.where((p) => !p.isPathParam && !p.isQueryParam).toList();
  }

  List<ParamConfig> get pathQueryParams {
    return parameters.where((p) => p.isPathParam || p.isQueryParam).toList();
  }

  Iterable<ParamConfig> get requiredParams => parameters.where((p) => p.isPositional && !p.isOptional);

  Iterable<ParamConfig> get positionalParams => parameters.where((p) => p.isPositional);

  Iterable<ParamConfig> get namedParams => parameters.where((p) => p.isNamed);

  String get routeName {
    var nameToUse;
    if (name != null) {
      nameToUse = name;
    } else if (replacementInRouteName != null && replacementInRouteName!.split(',').length == 2) {
      var parts = replacementInRouteName!.split(',');
      nameToUse = className.replaceAll(parts[0], parts[1]);
    } else {
      nameToUse = "${className}Route";
    }
    return capitalize(nameToUse);
  }

  String get pageTypeName {
    switch (routeType) {
      case RouteType.cupertino:
        return 'CupertinoPageX';
      case RouteType.custom:
        return 'CustomPage';
      case RouteType.adaptive:
        return 'AdaptivePage';
      default:
        return 'MaterialPageX';
    }
  }
}

class RouteType {
  static const int material = 0;
  static const int cupertino = 1;
  static const int adaptive = 2;
  static const int custom = 3;
  static const int redirect = 4;
}
