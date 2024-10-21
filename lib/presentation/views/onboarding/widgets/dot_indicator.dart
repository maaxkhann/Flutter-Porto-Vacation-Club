import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.isActive,
    required this.activeColor,
    required this.inActiveColor,
  });

  final bool isActive;
  final Color activeColor;
  final Color inActiveColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 7,
      width: isActive ? 35 : 13,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
          color: isActive ? activeColor : inActiveColor.withOpacity(0.25),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
