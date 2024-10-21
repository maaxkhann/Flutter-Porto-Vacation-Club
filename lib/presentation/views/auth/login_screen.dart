import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcore/presentation/components/custom_textfield.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/presentation/views/auth/components/bp_bottomsheet.dart';
import 'package:projectcore/presentation/views/auth/register_screen.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_bottomsheet.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ValueNotifier<bool> isCheck = ValueNotifier(false);
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
                      'Login',
                      style: AppTextstyle.headingTextStyle(
                          color: AppColors.darkVoilet),
                    ),
                    12.spaceY,
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: 'Donn\'t have account? ',
                        style: AppTextstyle.bodyTextStyle(
                            color: AppColors.darkGreyishBlue),
                      ),
                      TextSpan(
                          text: 'Sign Up',
                          style: AppTextstyle.bodyTextStyle(
                              color: AppColors.buttonsColor,
                              fontWeight: FontWeight.w600),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => RegisterScreen())),
                    ])),
                    24.spaceY,
                    Text('Email',
                        style: AppTextstyle.bodyTextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColors.darkVoilet)),
                    12.spaceY,
                    CustomTextField(hint: 'Example@gmail.com'),
                    16.spaceY,
                    Text('Password',
                        style: AppTextstyle.bodyTextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColors.darkVoilet)),
                    12.spaceY,
                    CustomTextField(hint: 'Type your password'),
                    12.spaceY,
                    Row(
                      children: [
                        ValueListenableBuilder(
                            valueListenable: isCheck,
                            builder: (context, val, child) {
                              return Checkbox(
                                  side: BorderSide(color: Color(0xFFDDDDDD)),
                                  visualDensity: VisualDensity.compact,
                                  value: isCheck.value,
                                  onChanged: (value) => isCheck.value = value!);
                            }),
                        Text(
                          'Keep me logged in',
                          style: AppTextstyle.bodyTextStyle(
                              color: AppColors.darkVoilet,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(height: Get.height * 0.12),
                    PrimaryButton(
                        label: 'Sign in',
                        bgColor: AppColors.purple,
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
