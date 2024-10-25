import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

class SortWidget extends StatelessWidget {
  const SortWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Wrap(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sort',
                    style: AppTextstyle.headingTextStyle(
                        fontSize: 16, color: AppColors.buttonsColor),
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: AppColors.lightShadeBlue,
                        shape: BoxShape.circle),
                    child: InkWell(
                      onTap: () => Get.back(),
                      child: Icon(
                        Icons.close,
                        color: AppColors.darkVoilet,
                        size: 18,
                      ),
                    ),
                  )
                ],
              ),
              10.spaceY,
              Divider(color: AppColors.whiteShade, thickness: 2),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'Newest',
                        style: AppTextstyle.bodyTextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.darkVoilet),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(color: AppColors.whiteShade),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'Oldest',
                        style: AppTextstyle.bodyTextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.darkVoilet),
                      ),
                    ],
                  ),
                ),
              ),
              10.spaceY,
              Divider(color: AppColors.whiteShade),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'Most Amount',
                        style: AppTextstyle.bodyTextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.darkVoilet),
                      ),
                    ],
                  ),
                ),
              ),
              10.spaceY,
              Divider(color: AppColors.whiteShade),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'Lowest Amount',
                        style: AppTextstyle.bodyTextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.darkVoilet),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
