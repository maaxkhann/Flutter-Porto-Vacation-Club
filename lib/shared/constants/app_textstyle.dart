import 'package:flutter/widgets.dart';

import 'app_colors.dart';

class AppTextstyle {
  static headingTextStyle(
          {FontWeight fontWeight = FontWeight.w700,
          double fontSize = 20,
          Color color = AppColors.black,
          TextOverflow overflow = TextOverflow.visible}) =>
      _normalText(
        fontFamily: 'Quicksand',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        overflow: overflow,
      );
  static bodyTextStyle(
          {FontWeight fontWeight = FontWeight.normal,
          double fontSize = 14,
          Color color = AppColors.black,
          TextOverflow overflow = TextOverflow.visible}) =>
      _normalText(
        fontFamily: 'Quicksand',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        overflow: overflow,
      );
  static roboto(
          {FontWeight fontWeight = FontWeight.normal,
          double fontSize = 14,
          Color color = AppColors.black,
          TextOverflow overflow = TextOverflow.ellipsis}) =>
      _normalText(
        fontFamily: 'Quicksand',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        overflow: overflow,
      );

  static TextStyle _normalText(
          {required String fontFamily,
          FontWeight fontWeight = FontWeight.normal,
          double fontSize = 14,
          Color color = AppColors.black,
          TextOverflow? overflow}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          fontSize: fontSize,
          overflow: overflow,
          color: color);
}
