import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  
  final Widget child;
  final EdgeInsets? padding;
  final Color? backgroundColor;

  const AppContainer({ 
    Key? key,
    required this.child,
    this.padding,
    this.backgroundColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Container(
          color: backgroundColor,
          padding: padding,
          width: 440.0,
          child: child,
        ),
      ),
    );
  }
}