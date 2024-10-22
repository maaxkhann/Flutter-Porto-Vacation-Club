import 'package:flutter/material.dart';
import '../../../../shared/shared.dart';

class BookingConfirmationScreen extends StatelessWidget {
  const BookingConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            width: 350,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                4.spaceY,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppAssets.splash,
                      height: 38,
                      width: 74,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Heading
                Text(
                  'Your Booking is\nConfirmed 🎉',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.buttonsColor,
                  ),
                ),
                SizedBox(height: 18),
                // Image Section
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    AppAssets.bookingConfirm,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                // Congratulations Text
                Text(
                  'Congratulations! Get ready and tied your luggage now, we wish you a really fun vacation. 😎☀️\n\nPlease follow this ground rules before arriving to your unit.',
                  style: TextStyle(fontSize: 16, color: AppColors.lightBlack),
                ),
                SizedBox(height: 20),
                // Ground Rules Heading
                Text(
                  'Ground rules',
                  style: TextStyle(
                    fontSize: 22,
                    color: AppColors.buttonsColor,
                  ),
                ),
                SizedBox(height: 10),
                // Ground Rules List
                Text(
                  'We ask every guest to remember a few simple things about what makes a great guest.\n\n'
                  '• Follow the house rules\n'
                  '• Respect your Host’s home like your own',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                // Cancellation Policy
                Text(
                  'Cancellation policy',
                  style: TextStyle(
                    fontSize: 22,
                    color: AppColors.buttonsColor,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Free cancellation before Sep 17. Cancel before check-in on Sep 24 for a partial refund.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                // View Invoice Button
                ElevatedButton(
                  onPressed: () {
                    // Handle view invoice
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    backgroundColor: AppColors.buttonsColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'View Invoice',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Add to Calendar
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Add to Calendar'.toUpperCase(),
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                8.spaceY,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppAssets.apple, height: 22),
                    15.spaceX,
                    Image.asset(AppAssets.goolge, height: 22),
                    15.spaceX,
                    Image.asset(AppAssets.o, height: 22),
                  ],
                ),
                30.spaceY,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppAssets.splash,
                      height: 38,
                      width: 74,
                    ),
                  ],
                ),
                16.spaceY,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Port Vacation Club, Inc.\n88 Dokki St.\nGiza, Egypt',
                      style:
                          TextStyle(fontSize: 12, color: AppColors.lightBlack),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppAssets.facebook, height: 15),
                        15.spaceX,
                        Image.asset(AppAssets.insta, height: 15),
                        15.spaceX,
                        Image.asset(AppAssets.x, height: 15),
                      ],
                    ),
                  ],
                ),
                30.spaceY,
                Text(
                  'Update your email preferences to choose which emails you get or unsubscribe from this type of email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: AppColors.lightBlack),
                ),
                16.spaceY,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Unsubscribe',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          decoration: TextDecoration.underline),
                    ),
                    8.spaceX,
                    Text(
                      'View in the browser',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
