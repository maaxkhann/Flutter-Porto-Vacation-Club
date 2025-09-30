import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcore/presentation/components/common_appbar.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/presentation/views/home_flow/widgets/book_now_widget.dart';
import 'package:projectcore/presentation/views/home_flow/widgets/payment_success_widget.dart';
import 'package:projectcore/shared/shared.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
                    getTranslated('request_to_book', context),
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
                    getTranslated('your_trip', context),
                    style: AppTextstyle.headingTextStyle(
                        fontSize: 16, color: AppColors.buttonsColor),
                  ),
                  16.spaceY,
                  Text(
                    getTranslated('dates', context),
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
                          getTranslated('edit', context),
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
              _buildSectionTitle(getTranslated('cancellation_policy', context)),
              SizedBox(height: 8),
              _buildDetailText(
                '${getTranslated('free_cancellation_before', context)} Nov 07.\n${getTranslated('cancel_before_check', context)} Nov 12\n${getTranslated('for_partial_refund', context)}.',
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    // Learn more action
                  },
                  child: Text(
                    getTranslated('learn_more', context),
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
              _buildSectionTitle(getTranslated('ground_rules', context)),
              SizedBox(height: 8),
              _buildDetailText(
                getTranslated('we_ask_every_guest_to_remember', context),
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
                          getTranslated(
                              'your_reservation_wont_be_confirmed_until',
                              context),
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.lightBlack),
                        ),
                        SizedBox(height: 8),
                        Text(
                          getTranslated(
                              'you_wont_be_charged_until_then', context),
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
                  text: getTranslated(
                      'by_booking_you_agree_to_the', context), // Default text
                  style:
                      AppTextstyle.bodyTextStyle(color: AppColors.lightBlack),
                  children: [
                    TextSpan(
                      text: getTranslated('rules', context),
                      style: TextStyle(
                        color: AppColors.lightBlack,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ', ',
                    ),
                    TextSpan(
                      text: getTranslated('ground_rules_for_guests', context),
                      style: TextStyle(
                        color: AppColors.lightBlack,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ', ',
                    ),
                    TextSpan(
                      text: getTranslated('rebooking_refund_policy', context),
                      style: TextStyle(
                        color: AppColors.lightBlack,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ', ${getTranslated('and_that_pvc_can', context)} ',
                    ),
                    TextSpan(
                      text: getTranslated('charge_my_payment_method', context),
                      style: TextStyle(
                        color: AppColors.lightBlack,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' ${getTranslated('if_im_responsible_for_damage', context)}.',
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
                              '${getTranslated('from', context)} Wed ${getTranslated('to', context)} Sun',
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
                          getTranslated(
                              'your_payment_will_be_made_by', context),
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
                      getTranslated('price_details', context),
                      style: AppTextstyle.headingTextStyle(
                          color: AppColors.lightBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    24.spaceY,
                    _buildPriceRow('900 x 3 nights', '2,700 EGP'),
                    _buildPriceRow('cleaning_fee', '200 EGP'),
                    _buildPriceRow('service_fee', '0 EGP'),
                    Divider(),
                    _buildPriceRow('(EGP)', '2,900 EGP', isBold: true),
                  ],
                ),
              ),
              SizedBox(height: 16),

              40.spaceY,
              BookNowWidget(
                text1: '(EGP)',
                text2: '2,700 EGP',
                buttonText: '${getTranslated('pay_with', context)} Paymob',
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
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Builder(builder: (context) {
      return Text(
        getTranslated(title, context),
        style: AppTextstyle.headingTextStyle(
            fontSize: 16, color: AppColors.buttonsColor),
      );
    });
  }

  Widget _buildDetailText(String text) {
    return Builder(builder: (context) {
      return Text(
        getTranslated(text, context),
        style: AppTextstyle.bodyTextStyle(
            fontSize: 14, color: AppColors.lightBlack),
      );
    });
  }

  Widget _buildPriceRow(String label, String price, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(builder: (context) {
            return Text(
              '${getTranslated('total', context)} ${getTranslated(label, context)}',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
            );
          }),
          Builder(builder: (context) {
            return Text(
              getTranslated(price, context),
              style: AppTextstyle.bodyTextStyle(
                  fontSize: 14,
                  color: AppColors.lightBlack,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
            );
          }),
        ],
      ),
    );
  }
}
