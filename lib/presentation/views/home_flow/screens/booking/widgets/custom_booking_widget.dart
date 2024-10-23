import 'package:flutter/material.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

class CustomBookingWidget extends StatelessWidget {
  const CustomBookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          _buildBookingItem(
            number: '1',
            text: 'Pending',
            imagePath: AppAssets.watch,
          ),
          _buildBookingItem(
            number: '2',
            text: 'UpComing',
            imagePath: AppAssets.upcomingIcon,
          ),
          _buildBookingItem(
            number: '3',
            text: 'Completed',
            imagePath: AppAssets.tick,
          ),
        ],
      ),
    );
  }

  Widget _buildBookingItem({
    required String number,
    required String text,
    required String imagePath,
  }) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                number,
                style: AppTextstyle.headingTextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkVoilet,
                ),
              ),
              12.spaceX,
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.brightGrey,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(imagePath, width: 16, height: 16),
              ),
            ],
          ),
          8.spaceY,
          Text(
            text,
            style: AppTextstyle.bodyTextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.darkGrey,
            ),
          ),
        ],
      ),
    );
  }
}
