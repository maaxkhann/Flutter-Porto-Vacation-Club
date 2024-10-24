import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:projectcore/presentation/components/common_appbar.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/presentation/views/cancel_booking/confirm_cancel_screen.dart';
import 'package:projectcore/presentation/views/cancel_booking/widgets/cancel_reason_widget.dart';
import 'package:projectcore/presentation/views/home_flow/widgets/upcoming_booking_widget.dart';

import '../../../shared/shared.dart';
import '../home_flow/widgets/book_now_widget.dart';

class CancelBookingScreen extends StatefulWidget {
  const CancelBookingScreen({super.key});

  @override
  State<CancelBookingScreen> createState() => _CancelBookingScreenState();
}

class _CancelBookingScreenState extends State<CancelBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      padding: EdgeInsets.only(left: 4),
                      constraints: BoxConstraints(),
                    ),
                  ),
                  8.spaceX,
                  Text(
                    'Why do you need to cancel?',
                    style: AppTextstyle.headingTextStyle(
                        fontSize: 16, color: AppColors.buttonsColor),
                  ),
                ],
              ),
              16.spaceY,
              CancelReasonWidget(),
              24.spaceY,
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          AppAssets.noBookings,
                          height: 48,
                        ),
                        16.spaceX,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'From Wed to Sun',
                              style: AppTextstyle.bodyTextStyle(
                                  color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              '02 Dec - 04 Dec',
                              style: AppTextstyle.headingTextStyle(
                                  color: AppColors.buttonsColor, fontSize: 14),
                            ),
                            Text(
                              '2 Nights • #234324',
                              style: AppTextstyle.bodyTextStyle(
                                  color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          'Your payment will be made by ',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Image.asset(
                          AppAssets.payMob,
                          width: 74,
                          height: 19,
                        ),
                      ],
                    ),
                    16.spaceY,
                    Divider(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    16.spaceY,
                    Text(
                      'Price Details',
                      style: AppTextstyle.headingTextStyle(
                          color: AppColors.lightBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    24.spaceY,
                    _buildPriceRow('Accommodation', '2,700 EGP'),
                    _buildPriceRow('VAT (14%)', '-200 EGP'),
                    _buildPriceRow('Service fees', '-100 EGP'),
                    Divider(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    _buildPriceRow('Total refund (EGP)', '2,900 EGP',
                        isBold: true),
                    16.spaceY,
                    PrimaryButton(
                      label: 'Continue',
                      labelSize: 14,
                      radius: 50,
                      bgColor: AppColors.buttonsColor,
                      onTap: () {
                        Get.to(() => ConfirmCancelScreen());
                      },
                    ),
                  ],
                ),
              ),
              16.spaceY,
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: AppColors.buttonsColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppAssets.call,
                      height: 24,
                      width: 24,
                    ),
                    16.spaceX,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Cancellation confirmation call',
                                  style: AppTextstyle.bodyTextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.buttonsColor,
                                      overflow: TextOverflow.clip),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'A customer support agent will call you to confirm your cancellation within the next two working days.',
                              style: AppTextstyle.bodyTextStyle(
                                fontSize: 14,
                                color: AppColors.buttonsColor,
                              ),
                            ),
                          ),
                          8.spaceY,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              12.spaceY,
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total refund (EGP)',
                          style: AppTextstyle.bodyTextStyle(
                              color: Colors.grey, fontSize: 14),
                        ),
                        Text(
                          '2,200 EGP',
                          style: AppTextstyle.headingTextStyle(
                              color: AppColors.buttonsColor, fontSize: 18),
                        ),
                      ],
                    ),
                    10.spaceX,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Refund stays',
                          style: AppTextstyle.bodyTextStyle(
                              color: Colors.grey, fontSize: 14),
                        ),
                        Text(
                          '3 Nights',
                          style: AppTextstyle.headingTextStyle(
                              color: AppColors.buttonsColor, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              12.spaceY,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPriceRow(String label, String price, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
                fontSize: 14,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
          Text(
            price,
            style: AppTextstyle.bodyTextStyle(
                fontSize: 14,
                color: AppColors.lightBlack,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
