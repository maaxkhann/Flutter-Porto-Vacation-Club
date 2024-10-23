import 'package:flutter/material.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

class BookingDetailsWidget extends StatelessWidget {
  const BookingDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 4,
        shrinkWrap: true,
        separatorBuilder: (context, index) => 12.spaceY,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(58)),
                    child: Row(
                      children: [
                        Image.asset(AppAssets.filter, width: 16, height: 15),
                        4.spaceX,
                        Text(
                          'Filter',
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.buttonsColor),
                        )
                      ],
                    ),
                  ),
                  6.spaceX,
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(58)),
                    child: Row(
                      children: [
                        Image.asset(AppAssets.sort, width: 16, height: 15),
                        4.spaceX,
                        Text(
                          'Sort',
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.buttonsColor),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              12.spaceY,
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(color: Color(0xFFFCFCFD)),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.white.withOpacity(0.05),
                          blurRadius: 64,
                          spreadRadius: -32,
                          offset: Offset(0, 20))
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Booking Details',
                            style: AppTextstyle.headingTextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        PrimaryButton(
                          buttonWidth: 73,
                          buttonHeight: 24,
                          icon: AppAssets.dot,
                          bgColor: AppColors.orange.withOpacity(0.1),
                          label: 'Pending',
                          labelColor: AppColors.orange,
                        )
                      ],
                    ),
                    24.spaceY,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              '25',
                              style: AppTextstyle.headingTextStyle(
                                  fontSize: 24, color: AppColors.buttonsColor),
                            ),
                            Text(
                              'August 24',
                              style: AppTextstyle.bodyTextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.darkGrey),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 9),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color:
                                        AppColors.buttonsColor.withOpacity(0.1),
                                    shape: BoxShape.circle),
                                child: Icon(Icons.home,
                                    color: AppColors.buttonsColor, size: 24),
                              ),
                              4.spaceY,
                              Text(
                                'August 24',
                                style: AppTextstyle.bodyTextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.darkGrey),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              '28',
                              style: AppTextstyle.headingTextStyle(
                                  fontSize: 24, color: AppColors.buttonsColor),
                            ),
                            Text(
                              'August 24',
                              style: AppTextstyle.bodyTextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.darkGrey),
                            ),
                          ],
                        )
                      ],
                    ),
                    24.spaceY,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Confirmation Number',
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.darkGrey),
                        ),
                        Text(
                          '#2334444',
                          style: AppTextstyle.bodyTextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.darkGrey),
                        )
                      ],
                    ),
                    8.spaceY,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Booking Fees',
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.darkGrey),
                        ),
                        Text(
                          'EGP 2500',
                          style: AppTextstyle.headingTextStyle(
                              color: AppColors.darkVoilet),
                        )
                      ],
                    ),
                    12.spaceY,
                    PrimaryButton(
                      label: 'Cancel',
                      fontWeight: FontWeight.w600,
                      labelColor: AppColors.brightRed,
                      buttonHeight: 40,
                      bgColor: Color(0xFFFFF1F4),
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }
}
