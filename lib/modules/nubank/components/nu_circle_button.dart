import 'package:fake_bank/modules/nubank/theme/nu_colors.dart';
import 'package:flutter/material.dart';

class NuCircleButton extends StatelessWidget {

  final Widget child;
  final String? text;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final EdgeInsets? margin;
  final VoidCallback? onTap;

  const NuCircleButton({ 
    Key? key,
    required this.child,
    this.text,
    this.onTap,
    this.backgroundColor,
    this.margin = const EdgeInsets.all(5.0),
    this.textStyle = const TextStyle(fontWeight: FontWeight.w600),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150.0,
        width: 80.0,
        margin: margin,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: child,
              radius: 35.0,
              backgroundColor: backgroundColor ?? NuColors.kBgButtonColor,
            ),
            if(text != null)
              const SizedBox(height: 20.0),
              Text('$text', 
                style: textStyle, 
                textAlign: TextAlign.center,
              )
          ],
        ),
      ),
    );
  }
}