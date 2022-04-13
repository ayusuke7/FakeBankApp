import 'package:fake_bank/ui/nubank/routes/routes_names.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  Widget child = nubankRoutes[settings.name] ?? Container();
  
  PageRoute fadeRouter = _FadeRoute(
    child: child, 
    routeName: settings.name!
  );

  return fadeRouter;
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
