import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton(
      {super.key,
      required this.backgroundColor,
      this.borderRadius,
      required this.textColor});

  final Color backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final Text textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            )),
        child: Center(child: textColor),
      ),
    );
  }
}
