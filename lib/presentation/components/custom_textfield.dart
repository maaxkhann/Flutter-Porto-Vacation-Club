import 'package:flutter/material.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Color borderColor;
  final double borderRadius;
  final double height;
  final Color? fillColor;

  const CustomTextField({
    super.key,
    this.borderColor = const Color(0xFFDDDDDD), // Default color #DDDDDD
    this.borderRadius = 8.0, // Default radius
    this.height = 40.0, // Default height
    this.fillColor,
    required this.hint, // Optional fill color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppTextstyle.bodyTextStyle(
              color: AppColors.darkGreyishBlue,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          filled: true,

          fillColor: fillColor ??
              Colors.white, // Optional fill color or default to white
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
