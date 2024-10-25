import 'package:flutter/material.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/presentation/views/home_flow/screens/booking/widgets/filter_widget.dart';
import 'package:projectcore/presentation/views/home_flow/screens/booking/widgets/sort_widget.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_bottomsheet.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

class PaymentWidget extends StatelessWidget {
  final Widget? button;
  final Widget? status;
  const PaymentWidget({super.key, this.button, this.status});

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
                  GestureDetector(
                    onTap: () => appBottomSheet(
                      context,
                      widget: FilterWidget(),
                    ),
                    child: Container(
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
                  ),
                  6.spaceX,
                  GestureDetector(
                    onTap: () => appBottomSheet(context, widget: SortWidget()),
                    child: Container(
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
                        Row(
                          children: [
                            Image.asset(
                              AppAssets.calendar,
                              height: 48,
                            ),
                            15.spaceX,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Due Date',
                                  style: AppTextstyle.bodyTextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text(
                                  '24 Aug 2024',
                                  style: AppTextstyle.headingTextStyle(
                                      color: AppColors.buttonsColor,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                        status ??
                            PrimaryButton(
                              buttonWidth: 73,
                              buttonHeight: 24,
                              icon: AppAssets.dot,
                              iconColor: AppColors.orange,
                              bgColor: AppColors.orange.withOpacity(0.1),
                              label: 'Pending',
                              labelColor: AppColors.orange,
                            )
                      ],
                    ),
                    24.spaceY,
                    Divider(color: Colors.grey[300]),
                    24.spaceY,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Installments',
                          style: AppTextstyle.headingTextStyle(
                              color: AppColors.lightBlack, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Image.asset(AppAssets.tick, height: 14),
                            Image.asset(AppAssets.tick, height: 14),
                            Image.asset(AppAssets.tick, height: 14),
                            1.spaceX,
                            CircleAvatar(
                                radius: 6, backgroundColor: Colors.grey[300]),
                            1.spaceX,
                            CircleAvatar(
                                radius: 6, backgroundColor: Colors.grey[300]),
                            1.spaceX,
                            CircleAvatar(
                                radius: 6, backgroundColor: Colors.grey[300]),
                          ],
                        ),
                      ],
                    ),
                    8.spaceY,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Fees',
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.darkGrey),
                        ),
                        Text(
                          '2200 EGP',
                          style: AppTextstyle.bodyTextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.buttonsColor),
                        )
                      ],
                    ),
                    8.spaceY,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Invoice Number',
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.darkGrey),
                        ),
                        Text(
                          '#500000731',
                          style: AppTextstyle.bodyTextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.buttonsColor),
                        )
                      ],
                    ),
                    16.spaceY,
                    button ??
                        PrimaryButton(
                          label: 'Pay Now',
                          fontWeight: FontWeight.w600,
                          labelColor: AppColors.white,
                          buttonHeight: 40,
                          bgColor: AppColors.buttonsColor,
                          radius: 100,
                        )
                  ],
                ),
              ),
            ],
          );
        });
  }
}
