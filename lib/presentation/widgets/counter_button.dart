import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final bool mini;

  const CounterButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.mini = false,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      mini: mini,
      backgroundColor: backgroundColor,
      elevation: backgroundColor == Colors.transparent ? 0 : null,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
