import 'package:fake_bank/ui/nubank/theme/colors.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final Widget child;
  final String? text;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final EdgeInsets? margin;
  final VoidCallback? onTap;

  const CircleButton({ 
    Key? key,
    required this.child,
    this.text,
    this.onTap,
    this.margin = const EdgeInsets.all(5.0),
    this.backgroundColor = kBgButtonColor,
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
              backgroundColor: backgroundColor,
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