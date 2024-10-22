import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcore/presentation/views/home_flow/screens/bookings_details_screen.dart';

import '../../../../shared/shared.dart';

class BookNowWidget extends StatelessWidget {
  final String? text1;
  final String? text2;
  final String? buttonText;
  final VoidCallback? onTap;
  const BookNowWidget(
      {super.key, this.text1, this.text2, this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text1 ?? 'Remain in 5 nights',
                    style: AppTextstyle.bodyTextStyle(
                        color: Colors.grey, fontSize: 14),
                  ),
                  Text(
                    text2 ?? 'Porto Sonkha',
                    style: AppTextstyle.headingTextStyle(
                        color: AppColors.buttonsColor, fontSize: 18),
                  ),
                ],
              ),
              10.spaceX,
              GestureDetector(
                onTap: onTap ??
                    () {
                      Get.to(BookingDetailsScreen());
                    },
                child: Container(
                  // height: 44,
                  // width: 128,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                    color: AppColors.buttonsColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  // padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      buttonText ?? 'Book Now',
                      style: AppTextstyle.bodyTextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
