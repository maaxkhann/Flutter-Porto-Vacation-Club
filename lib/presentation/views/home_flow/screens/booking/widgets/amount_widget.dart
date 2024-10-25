import 'package:flutter/material.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/shared.dart';

class AmountWidget extends StatelessWidget {
  final String title;
  const AmountWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextstyle.bodyTextStyle(
              fontWeight: FontWeight.w500, color: AppColors.darkShadeGrey),
        ),
        8.spaceY,
        Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: AppColors.lightGreyishBlue),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Text(
                  'Amount',
                  style: AppTextstyle.bodyTextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.darkGreyishBlue),
                ),
              ),
              Container(
                  width: 1, height: 48, color: AppColors.lightGreyishBlue),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Text(
                  'EGP',
                  style: AppTextstyle.bodyTextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: AppColors.darkGrey),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
