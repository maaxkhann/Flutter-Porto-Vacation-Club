import 'package:flutter/material.dart';
import 'package:projectcore/presentation/components/common_appbar.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/presentation/views/home_flow/widgets/book_now_widget.dart';
import 'package:projectcore/presentation/views/home_flow/widgets/payment_success_widget.dart';
import 'package:projectcore/shared/shared.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      // Navigator.pop(context);
                    },
                    padding: EdgeInsets.only(left: 4),
                    constraints: BoxConstraints(),
                  ),
                ),
                8.spaceX,
                Text(
                  'Request to book',
                  style: AppTextstyle.headingTextStyle(
                      fontSize: 16, color: AppColors.buttonsColor),
                ),
              ],
            ),
            16.spaceY,

            // Your Trip Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your trip',
                  style: AppTextstyle.headingTextStyle(
                      fontSize: 16, color: AppColors.buttonsColor),
                ),
                16.spaceY,
                Text(
                  'Dates',
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 14, color: AppColors.lightBlack),
                ),
                8.spaceY,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nov 12 - 15 (3 Nights)',
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 14, color: AppColors.lightBlack),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Edit action
                      },
                      child: Text(
                        'Edit',
                        style: AppTextstyle.bodyTextStyle(
                          color: AppColors.buttonsColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            16.spaceY,
            Divider(
              color: Colors.grey.withOpacity(0.5),
            ),
            16.spaceY,

            // Cancellation Policy Section
            _buildSectionTitle('Cancellation policy'),
            SizedBox(height: 8),
            _buildDetailText(
              'Free cancellation before Nov 07.\nCancel before check-in on Nov 12\nfor a partial refund.',
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Learn more action
                },
                child: Text(
                  'Learn more',
                  style: AppTextstyle.bodyTextStyle(
                    color: AppColors.buttonsColor,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            16.spaceY,
            Divider(
              color: Colors.grey.withOpacity(0.5),
            ),
            16.spaceY,

            // Ground Rules Section
            _buildSectionTitle('Ground rules'),
            SizedBox(height: 8),
            _buildDetailText(
              'We ask every guest to remember a few simple things about what makes a great guest: \n\n- Follow the house rules\n- Treat your host\'s home like your own',
            ),
            16.spaceY,
            Divider(
              color: Colors.grey.withOpacity(0.5),
            ),
            16.spaceY,

            // Reservation Status
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.noBookings,
                  height: 48,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your reservation won’t be confirmed until the host accepts your request (within 24 hours).',
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.lightBlack),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'You won’t be charged until then.',
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 14, color: AppColors.lightBlack),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            16.spaceY,
            Divider(
              color: Colors.grey.withOpacity(0.5),
            ),
            16.spaceY,

            RichText(
              text: TextSpan(
                text: 'By Booking, you agree to the ', // Default text
                style: AppTextstyle.bodyTextStyle(color: AppColors.lightBlack),
                children: [
                  TextSpan(
                    text: 'Rules',
                    style: TextStyle(
                      color: AppColors.lightBlack,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: ', ',
                  ),
                  TextSpan(
                    text: 'Ground rules for guests',
                    style: TextStyle(
                      color: AppColors.lightBlack,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: ', ',
                  ),
                  TextSpan(
                    text: 'Rebooking and Refund Policy',
                    style: TextStyle(
                      color: AppColors.lightBlack,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: ', and that PVC can ',
                  ),
                  TextSpan(
                    text: 'charge my payment method',
                    style: TextStyle(
                      color: AppColors.lightBlack,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: ' if I’m responsible for damage.',
                  ),
                ],
              ),
            ),

            24.spaceY,

            // Payment Info Section
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
                  _buildPriceRow('900 x 3 nights', '2,700 EGP'),
                  _buildPriceRow('Cleaning fee', '200 EGP'),
                  _buildPriceRow('Service fee', '0 EGP'),
                  Divider(),
                  _buildPriceRow('Total (EGP)', '2,900 EGP', isBold: true),
                ],
              ),
            ),
            SizedBox(height: 16),

            40.spaceY,
            BookNowWidget(
              text1: 'Total (EGP)',
              text2: '2,700 EGP',
              buttonText: 'Pay with Paymob',
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: SizedBox(
                            height: 410, child: PaymentSuccessScreen()),
                      );
                    });
              },
            ),
            8.spaceY,
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: AppTextstyle.headingTextStyle(
          fontSize: 16, color: AppColors.buttonsColor),
    );
  }

  Widget _buildDetailText(String text) {
    return Text(
      text,
      style:
          AppTextstyle.bodyTextStyle(fontSize: 14, color: AppColors.lightBlack),
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
