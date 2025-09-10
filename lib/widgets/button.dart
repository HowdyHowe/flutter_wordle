import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final bool isIcon;
  final bool isActive;
  final IconData? icon;
  final String? text;
  final double width;
  final double height;
  final double iconSize;
  final bool round;
  final VoidCallback onPressed;
  Button({
    super.key,
    this.text,
    this.icon,
    required this.isActive,
    required this.iconSize,
    required this.isIcon,
    required this.width,
    required this.height,
    required this.round,
    required this.onPressed,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  double _scale = 1.0;

  void _setTapDown(TapDownDetails details) {
    setState(() => _scale = 0.9);
  }

  void _setTapUp(TapUpDetails details) {
    setState(() => _scale = 1.0);
  }

  void _setTapCancel() {
    setState(() => _scale = 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      onTapDown: _setTapDown,
      onTapUp: _setTapUp,
      onTapCancel: _setTapCancel,
      child: AnimatedScale(
        duration: Duration(milliseconds: 75),
        scale: _scale,
        child: Container(
            margin: EdgeInsets.all(3),
            width: widget.width,
            height: widget.height,
            decoration: widget.round
                ? BoxDecoration(
                    color: Color(widget.isActive ? 0xFFc7c9ff : 0xFFdfe2ff),
                    shape: BoxShape.circle)
                : BoxDecoration(
                    color: Color(widget.isActive ? 0xFFc7c9ff : 0xFFdfe2ff),
                    borderRadius: BorderRadius.circular(15)),
            child: Center(
                child: widget.isIcon
                    ? Icon(
                        widget.icon,
                        size: widget.iconSize,
                      )
                    : Text(
                        widget.text ?? "",
                      ))),
      ),
    );
  }
}
