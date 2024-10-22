import 'package:flutter/material.dart';
import 'package:projectcore/shared/shared.dart';

class BookingLockedWidget extends StatelessWidget {
  final void Function(bool)? onTap;
  const BookingLockedWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      child: Column(children: [
        Image.asset(
          AppAssets.lock,
          height: 48,
        ),
        8.spaceY,
        Text(
          'Booking is Locked',
          style: AppTextstyle.bodyTextStyle(color: AppColors.buttonsColor),
        ),
        4.spaceY,
        Text(
          'Pay your pending invoice first to start booking',
          style: AppTextstyle.bodyTextStyle(fontSize: 12, color: Colors.grey),
        ),
        8.spaceY,
        GestureDetector(
          onTap: () {
            if (onTap != null) {
              onTap!(false); // Return false when tapped
            }
          },
          child: Container(
            height: 40,
            width: 94,
            decoration: BoxDecoration(
              color: AppColors.buttonsColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                'Pay Now',
                style: AppTextstyle.bodyTextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
