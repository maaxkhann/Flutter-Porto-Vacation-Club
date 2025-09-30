import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcore/presentation/components/custom_textfield.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/presentation/views/auth/components/bp_bottomsheet.dart';
import 'package:projectcore/presentation/views/auth/login_screen.dart';
import 'package:projectcore/presentation/views/auth/phone_register_screen.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_bottomsheet.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';
import 'package:projectcore/shared/localization/language_constrants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                      getTranslated('register', context),
                      style: AppTextstyle.headingTextStyle(
                          color: AppColors.darkVoilet),
                    ),
                    12.spaceY,
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: getTranslated('already_have_account', context),
                        style: AppTextstyle.bodyTextStyle(
                            color: AppColors.darkGreyishBlue),
                      ),
                      TextSpan(
                          text: getTranslated('log_in', context),
                          style: AppTextstyle.bodyTextStyle(
                              color: AppColors.buttonsColor,
                              fontWeight: FontWeight.w600),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => LoginScreen())),
                    ])),
                    24.spaceY,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            getTranslated('email', context),
                            style: AppTextstyle.bodyTextStyle(
                                color: AppColors.darkVoilet),
                          ),
                        ),
                        FittedBox(
                          child: Row(
                            children: [
                              // Text(
                              //   'BP Number?',
                              //   style: AppTextstyle.bodyTextStyle(
                              //       color: AppColors.darkVoilet),
                              // ),
                              // 4.spaceX,
                              InkWell(
                                  onTap: () => appBottomSheet(context,
                                      widget: BPBottomSheet()),
                                  child: Image.asset(AppAssets.bpNo,
                                      width: 15, height: 15))
                            ],
                          ),
                        ),
                      ],
                    ),
                    12.spaceY,
                    CustomTextField(hint: 'Example@gmail.com'),
                    SizedBox(height: Get.height * 0.15),
                    PrimaryButton(
                        onTap: () => Get.to(() => LoginScreen()),
                        label: getTranslated('continue', context),
                        bgColor: AppColors.purple,
                        buttonHeight: 40),
                    16.spaceY,
                    PrimaryButton(
                        onTap: () => Get.to(() => PhoneRegisterScreen()),
                        label: getTranslated('register_with_phone', context),
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
