import 'package:flutter/material.dart';
import 'package:projectcore/shared/constants/app_colors.dart';

import '../../../../shared/shared.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      size: 20,
                      color: AppColors.lightBlack,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    padding: EdgeInsets.all(2),
                    constraints: BoxConstraints(),
                  ),
                )),
          ),
          Text(
            '2,700 EGP',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.lightBlack,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Payment Success!',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16),
          Divider(),
          PaymentDetailItem(
            title: 'Ref Number',
            value: '000085752257',
          ),
          PaymentDetailItem(
            title: 'Payment Time',
            value: '01-11-2023, 13:22:16',
          ),
          PaymentDetailItem(
            title: 'Payment Method',
            value: 'Bank Transfer',
          ),
          PaymentDetailItem(
            title: 'Sender Name',
            value: 'Ahmed Massoud',
          ),
          Divider(),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Amount',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                '2,700 EGP',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.lightBlack,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          FittedBox(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Image.asset(
                            AppAssets.download,
                            height: 20,
                          ),
                          2.spaceX,
                          Text(
                            'Get PDF Receipt',
                            style: AppTextstyle.bodyTextStyle(
                              color: AppColors.buttonsColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: AppColors.buttonsColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        'View My bookings',
                        style: AppTextstyle.bodyTextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentDetailItem extends StatelessWidget {
  final String title;
  final String value;

  const PaymentDetailItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            value,
            style: TextStyle(
              color: AppColors.lightBlack,
            ),
          ),
        ],
      ),
    );
  }
}
