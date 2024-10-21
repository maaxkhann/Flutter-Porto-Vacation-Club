import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';

class CustomPhoneNo extends StatelessWidget {
  final Color borderColor;
  final double borderRadius;
  final double height;
  final Color? fillColor;
  final TextEditingController controller;
  final ValueChanged<String>? onCountryChanged;

  const CustomPhoneNo({
    super.key,
    this.borderColor = const Color(0xFFDDDDDD),
    this.borderRadius = 8.0,
    this.height = 40.0,
    this.fillColor,
    this.onCountryChanged,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none, // No border by default
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor, width: 1.5),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor, width: 1.5),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        hintText: 'Phone number',
      ),
      dropdownTextStyle:
          AppTextstyle.bodyTextStyle(color: AppColors.darkVoilet),
      initialCountryCode: 'EG', // Egypt selected by default
      onChanged: (phone) {
        // Handle the input phone number change
      },
      onCountryChanged: (country) {
        // Handle country code changes
        if (onCountryChanged != null) {
          onCountryChanged!(country.dialCode);
        }
      },
      dropdownDecoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          bottomLeft: Radius.circular(borderRadius),
        ),
      ),
    );
  }
}
