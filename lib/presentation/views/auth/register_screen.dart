import 'package:flutter/material.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: AppColors.white),
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
                    ),
                  ])),
                  24.spaceY,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email, BP Number',
                        style: AppTextstyle.headingTextStyle(
                            color: AppColors.darkVoilet),
                      ),
                      Row(
                        children: [
                          Text(
                            'BP Number?',
                            style: AppTextstyle.headingTextStyle(
                                color: AppColors.darkVoilet),
                          ),
                          4.spaceX
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
