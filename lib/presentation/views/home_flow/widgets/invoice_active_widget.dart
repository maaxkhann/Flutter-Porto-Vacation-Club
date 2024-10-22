import 'package:flutter/material.dart';
import '../../../../shared/shared.dart';

class InvoiceActiveWidget extends StatelessWidget {
  final String? image;
  const InvoiceActiveWidget({super.key, this.image});

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
                image ?? AppAssets.noBookings,
                height: 48,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2500 EGP',
                    style: AppTextstyle.headingTextStyle(
                        color: AppColors.buttonsColor, fontSize: 14),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.tick,
                        height: 12,
                      ),
                      Image.asset(
                        AppAssets.tick,
                        height: 12,
                      ),
                      Image.asset(
                        AppAssets.tick,
                        height: 12,
                      ),
                    ],
                  ),
                  Text(
                    '3/6 installments',
                    style: AppTextstyle.bodyTextStyle(
                        color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              10.spaceX,
              Container(
                height: 40,
                width: 94,
                decoration: BoxDecoration(
                  color: AppColors.buttonsColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                // padding: const EdgeInsets.all(20),
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
            ],
          ),
        ),
      ],
    );
  }
}
