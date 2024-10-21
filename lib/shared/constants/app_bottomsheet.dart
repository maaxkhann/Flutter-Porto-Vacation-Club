import 'package:flutter/material.dart';

appBottomSheet(BuildContext context,
    {required Widget widget,
    double elevation = 2,
    Color backgroundColor = Colors.white}) {
  showModalBottomSheet(
      //  isScrollControlled: true,
      //  constraints: const BoxConstraints(maxWidth: 300),
      context: context,
      barrierColor: Colors.black.withOpacity(0.5),
      backgroundColor: backgroundColor,
      elevation: elevation,
      builder: (context) => widget);
}
