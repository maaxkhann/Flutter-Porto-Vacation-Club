import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcore/presentation/views/auth/register_screen.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';
import 'package:projectcore/shared/localization/language_constrants.dart';

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    super.key,
    required this.data,
    required this.currentPage,
  });

  final Map<String, dynamic> data;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              // Ensure the image doesn't take up too much space
              Image.asset(
                '${data['image']}',
                height: screenHeight * 0.5, // Limit the image height
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                right: 33,
                top: 50,
                child: InkWell(
                  onTap: () => Get.to(() => RegisterScreen()),
                  child: Text(
                    getTranslated('skip', context),
                    style: AppTextstyle.headingTextStyle(
                      fontSize: 22,
                      color: currentPage == 2
                          ? AppColors.white.withOpacity(0.9)
                          : AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          16.spaceY,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              getTranslated(data['title'], context),
              style: AppTextstyle.headingTextStyle(
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),
              textAlign:
                  TextAlign.center, // Center the text for better alignment
            ),
          ),
          4.spaceY,
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.asset(
              AppAssets.onArc,
              height: 10,
              width: 102,
              fit: BoxFit.cover,
            ),
          ),
          30.spaceY,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              getTranslated(data['text'], context),
              style: AppTextstyle.bodyTextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.center, // Center the text
            ),
          ),
        ],
      ),
    );
  }
}
