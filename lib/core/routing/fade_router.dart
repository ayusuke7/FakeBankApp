import 'package:flutter/material.dart';

class FadeRouter extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  
  FadeRouter({
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
