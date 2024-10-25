import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/presentation/views/home_flow/screens/booking/widgets/amount_widget.dart';
import 'package:projectcore/presentation/views/home_flow/screens/booking/widgets/booking_date_selection.dart';
import 'package:projectcore/presentation/views/home_flow/screens/booking/widgets/range_slider_widget.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filter',
                  style: AppTextstyle.headingTextStyle(
                      fontSize: 16, color: AppColors.buttonsColor),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: AppColors.lightShadeBlue, shape: BoxShape.circle),
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
            10.spaceY,
            Text(
              'Date Range',
              style: AppTextstyle.headingTextStyle(
                  fontSize: 16, color: AppColors.buttonsColor),
            ),
            6.spaceY,
            Text(
              'From',
              style: AppTextstyle.bodyTextStyle(
                  fontWeight: FontWeight.w500, color: AppColors.darkShadeGrey),
            ),
            6.spaceY,
            BookingDateSelection(),
            Divider(color: AppColors.whiteShade),
            8.spaceY,
            Text(
              'Amount',
              style: AppTextstyle.headingTextStyle(
                  fontSize: 16, color: AppColors.buttonsColor),
            ),
            2.spaceY,
            RangeSliderWidget(),
            6.spaceY,
            FittedBox(
              child: Row(
                children: [
                  AmountWidget(
                    title: "Min",
                  ),
                  12.spaceX,
                  AmountWidget(title: "Max"),
                ],
              ),
            ),
            28.spaceY,
            FittedBox(
              child: Row(
                children: [
                  PrimaryButton(
                      buttonWidth: 155,
                      label: 'Reset',
                      bgColor: AppColors.brightGrey,
                      radius: 100,
                      labelColor: AppColors.buttonsColor),
                  12.spaceX,
                  PrimaryButton(
                      buttonWidth: 155,
                      label: 'Apply',
                      bgColor: AppColors.buttonsColor,
                      radius: 100,
                      labelColor: AppColors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
