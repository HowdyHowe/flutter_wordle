import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final IconData icon;
  final double width;
  final double height;
  final double iconSize;
  final bool round;
  const Button(
      {super.key,
      required this.icon,
      required this.width,
      required this.height,
      required this.iconSize,
      required this.round});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: round
            ? BoxDecoration(color: Color(0xFFdfe2ff), shape: BoxShape.circle)
            : BoxDecoration(
                color: Color(0xFFdfe2ff),
                borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Icon(
          icon,
          size: iconSize,
        )));
  }
}
