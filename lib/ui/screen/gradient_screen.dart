import 'package:flutter/material.dart';

class GradientScreen extends StatelessWidget {
  const GradientScreen({
    super.key,
    required this.child,
    this.beginColor = Colors.yellow,
    this.endColor = Colors.blue,
  });

  final Widget child;
  final Color beginColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Container(
      width: screen.width,
      height: screen.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [beginColor, endColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child,
    );
  }
}
