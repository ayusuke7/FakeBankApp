import 'package:fake_bank/pages/nubank/home_page.dart';
import 'package:fake_bank/pages/nubank/login_page.dart';
import 'package:fake_bank/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Map<String, Widget> routesMap = {
  nubankLoginRoute: const NubankLoginPage(),
  nubankHomeRoute: const NubankHomePage(),
};

Route<dynamic> generateRoute(RouteSettings settings) {
  Widget child = routesMap[settings.name] ?? Container();
  return _getPageRoute(child, settings);
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(
    child: child, 
    routeName: settings.name!
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  
  _FadeRoute({
    required this.child, 
    required this.routeName
  }) : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) => child, transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
