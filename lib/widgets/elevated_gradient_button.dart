import 'package:flutter/material.dart';

class ElevatedGradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Gradient gradient;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;

  const ElevatedGradientButton({
    Key? key,
    required this.onPressed,
    required this.child,
    required this.gradient,
    this.width,
    this.height,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: Material(
        borderRadius: borderRadius,
        color: Colors.transparent,
        child: InkWell(
          borderRadius: borderRadius,
          onTap: onPressed,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
