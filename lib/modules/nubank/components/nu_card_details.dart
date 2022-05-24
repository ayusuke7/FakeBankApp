import 'package:flutter/material.dart';

class NuCardDetails extends StatelessWidget {

  final VoidCallback? onTap;
  final EdgeInsets? padding;
  final List<Widget> children;
  final Widget? trailing;

  const NuCardDetails({ 
    Key? key,
    this.onTap,
    this.padding,
    this.trailing,
    this.children = const []
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children
            )
          ),
          if(trailing != null) trailing!
        ],
      ),
    );
  }
}