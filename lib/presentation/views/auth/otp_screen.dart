import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/presentation/views/auth/components/custom_phone_no.dart';
import 'package:projectcore/presentation/views/auth/login_screen.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white.withOpacity(0.9),
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset(AppAssets.introTwo)),
          Positioned(
              top: Get.height * 0.09,
              left: Get.width * 0.3,
              child: Image.asset(
                AppAssets.splash,
                width: 136,
                height: 64,
              )),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Verify phone number ',
                      style: AppTextstyle.headingTextStyle(
                          color: AppColors.darkVoilet),
                    ),
                    12.spaceY,
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: 'Enter the code that was sent to',
                        style: AppTextstyle.bodyTextStyle(
                            color: AppColors.darkGreyishBlue),
                      ),
                    ])),
                    Text(
                      '+123456',
                      style: AppTextstyle.bodyTextStyle(
                          color: AppColors.darkVoilet),
                    ),
                    24.spaceY,
                    Pinput(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      length: 6,
                      defaultPinTheme: PinTheme(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFDDDDDD)),
                            borderRadius: BorderRadius.circular(8),
                          )),
                      separatorBuilder: (index) {
                        return index == 2 ? Text('--') : SizedBox();
                      },
                    ),
                    SizedBox(height: Get.height * 0.1),
                    PrimaryButton(
                        label: 'Continue',
                        bgColor: AppColors.purple,
                        buttonHeight: 40)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
