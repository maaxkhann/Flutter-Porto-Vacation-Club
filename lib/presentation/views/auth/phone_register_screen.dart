import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcore/presentation/components/custom_textfield.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/presentation/views/auth/components/bp_bottomsheet.dart';
import 'package:projectcore/presentation/views/auth/components/custom_phone_no.dart';
import 'package:projectcore/presentation/views/auth/login_screen.dart';
import 'package:projectcore/presentation/views/auth/otp_screen.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_bottomsheet.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

class PhoneRegisterScreen extends StatelessWidget {
  const PhoneRegisterScreen({super.key});

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
                      'Register',
                      style: AppTextstyle.headingTextStyle(
                          color: AppColors.darkVoilet),
                    ),
                    12.spaceY,
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: 'Do you have an account? ',
                        style: AppTextstyle.bodyTextStyle(
                            color: AppColors.darkGreyishBlue),
                      ),
                      TextSpan(
                          text: 'Log In',
                          style: AppTextstyle.bodyTextStyle(
                              color: AppColors.buttonsColor,
                              fontWeight: FontWeight.w600),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => LoginScreen())),
                    ])),
                    24.spaceY,
                    CustomPhoneNo(controller: TextEditingController()),
                    SizedBox(height: Get.height * 0.1),
                    PrimaryButton(
                        onTap: () => Get.to(() => OtpScreen()),
                        label: 'Continue',
                        bgColor: AppColors.purple,
                        buttonHeight: 40),
                    16.spaceY,
                    PrimaryButton(
                        label: 'Register with Phone Number',
                        icon: AppAssets.phone,
                        bgColor: AppColors.brightGrey,
                        labelColor: AppColors.buttonsColor,
                        buttonHeight: 40),
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
