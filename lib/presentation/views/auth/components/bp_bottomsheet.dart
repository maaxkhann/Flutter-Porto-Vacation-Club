import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

class BPBottomSheet extends StatelessWidget {
  const BPBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Wrap(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Business Partner (BP)',
                    style: AppTextstyle.headingTextStyle(
                        fontSize: 16, color: AppColors.buttonsColor),
                  ),
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.lightShadeBlue),
                      child: Icon(Icons.close,
                          size: 14, color: AppColors.buttonsColor),
                    ),
                  )
                ],
              ),
              16.spaceY,
              Divider(
                color: AppColors.lightGreyishBlue,
              ),
              20.spaceY,
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(0.8),
                    border: Border.all(width: 2, color: AppColors.brightGrey),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Buisness Partner ID: 1860',
                      style: AppTextstyle.bodyTextStyle(fontSize: 12),
                    ),
                    4.spaceY,
                    Text(
                      'Operation: E-Commerece Test',
                      style: AppTextstyle.bodyTextStyle(fontSize: 12),
                    ),
                    4.spaceY,
                    Text(
                      'Acct Description:',
                      style: AppTextstyle.bodyTextStyle(fontSize: 12),
                    ),
                    4.spaceY,
                    Text(
                      'Cortevatest + intern.com/(000)000-0000',
                      style: AppTextstyle.bodyTextStyle(fontSize: 12),
                    ),
                    4.spaceY,
                  ],
                ),
              ),
              16.spaceY,
              Text(
                'Your Business Partner number is the unique identifier in your contract that represents your membership in the Porto Vacation Club database.',
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.darkGrey),
              )
            ],
          ),
        ],
      ),
    );
  }
}
