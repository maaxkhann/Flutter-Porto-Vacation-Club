import 'package:flutter/material.dart';

import '../../../../shared/shared.dart';

class UpcomingBookingWidget extends StatelessWidget {
  const UpcomingBookingWidget({super.key});

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
              Image.asset(
                AppAssets.noBookings,
                height: 48,
              ),
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
              10.spaceX,
              Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(100),
                ),
                // padding: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    'Cancel',
                    style: AppTextstyle.bodyTextStyle(
                        color: Colors.red.withOpacity(0.8),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
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
