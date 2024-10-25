import 'package:flutter/material.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

class CustomBookingWidget extends StatelessWidget {
  final String? number1;
  final String? text1;
  final String? image1;
  final String? number2;
  final String? text2;
  final String? image2;
  final String? number3;
  final String? text3;
  final String? image3;

  const CustomBookingWidget({
    super.key,
    this.number1,
    this.text1,
    this.image1,
    this.number2,
    this.text2,
    this.image2,
    this.number3,
    this.text3,
    this.image3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: buildBookingItem(
            number: number1 ?? '1',
            text: text1 ?? 'Pending',
            imagePath: image1 ?? AppAssets.watch,
          ),
        ),
        Expanded(
          child: buildBookingItem(
            number: number2 ?? '2',
            text: text2 ?? 'UpComing',
            imagePath: image2 ?? AppAssets.upcomingIcon,
          ),
        ),
        Expanded(
          child: buildBookingItem(
            number: number3 ?? '3',
            text: text3 ?? 'Completed',
            imagePath: image3 ?? AppAssets.tick,
          ),
        ),
      ],
    );
  }
}

Widget buildBookingItem({
  required String number,
  required String text,
  required String imagePath,
}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                number,
                style: AppTextstyle.headingTextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkVoilet,
                ),
              ),
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
        ),
        8.spaceY,
        Text(
          text,
          // textAlign: TextAlign.center,
          style: AppTextstyle.bodyTextStyle(
            fontWeight: FontWeight.w500,
            color: AppColors.darkGrey,
          ),
        ),
      ],
    ),
  );
}
