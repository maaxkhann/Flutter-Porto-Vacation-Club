import 'package:flutter/material.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

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
                child: Text(
                  'Skip',
                  style: AppTextstyle.headingTextStyle(
                    fontSize: 22,
                    color: currentPage == 2
                        ? AppColors.lightCyanBlue
                        : AppColors.white,
                  ),
                ),
              ),
            ],
          ),
          16.spaceY,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              data['title'],
              style: AppTextstyle.headingTextStyle(
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),
              textAlign:
                  TextAlign.center, // Center the text for better alignment
            ),
          ),
          8.spaceY,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              data['text'],
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
