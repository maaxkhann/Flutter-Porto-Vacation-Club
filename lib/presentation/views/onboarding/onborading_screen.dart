import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/presentation/views/auth/register_screen.dart';
import 'package:projectcore/presentation/views/onboarding/widgets/dot_indicator.dart';
import 'package:projectcore/presentation/views/onboarding/widgets/onboard_content.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_colors.dart';

class OnboradingScreen extends StatefulWidget {
  const OnboradingScreen({super.key});

  @override
  State<OnboradingScreen> createState() => _OnboradingScreenState();
}

class _OnboradingScreenState extends State<OnboradingScreen> {
  int currentPage = 0;
  final PageController pageController = PageController();

  List<Map<String, dynamic>> demoData = [
    {
      'image': AppAssets.introOne,
      'title': 'Easy  Booking',
      'text':
          'Book Your Vacation with Just a Few Taps! Enjoy hassle-free transactions with our safe payment gateway '
    },
    {
      'image': AppAssets.on2,
      'title': 'Check Availability',
      'text':
          'Easily find out when your dream stay is available. Explore options that suit your schedule.'
    },
    {
      'image': AppAssets.on3,
      'title': 'Enjoy Your Vacation',
      'text':
          'Relax and Enjoy Your Dream Vacation! Create unforgettable memories while we take care of the details'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 14,
            child: PageView.builder(
              controller: pageController,
              itemCount: demoData.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (ctx, index) {
                final data = demoData[index];
                return OnBoardContent(
                  data: data,
                  currentPage: currentPage,
                );
              },
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(demoData.length, (index) {
              return DotIndicator(
                isActive: index == currentPage,
                activeColor: const Color(0xFF24BAEC),
                inActiveColor: Colors.grey,
              );
            }),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: PrimaryButton(
              label: currentPage == 0 ? 'Get Started' : 'Next',
              labelColor: AppColors.white,
              labelSize: 23,
              bgColor: AppColors.buttonsColor,
              fontWeight: FontWeight.w700,
              onTap: () {
                if (currentPage == demoData.length - 1) {
                  Get.to(() => RegisterScreen());
                } else {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
