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
      'image': AppAssets.introTwo,
      'title': 'Check your availability for your Good Stay',
      'text':
          'Check your availability and book your vacation easily. Enjoy your vacation!'
    },
    {
      'image': AppAssets.introTwo,
      'title': 'Pay money online and enjoy your vacation',
      'text': 'Book your vacation easily and securely with our payment gateway.'
    },
    {
      'image': AppAssets.introOne,
      'title': 'Login & Signup and choose membership',
      'text':
          'Login or Signup now and choose your membership to start booking your vacation!'
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
              label:
                  currentPage == demoData.length - 1 ? 'Get Started' : 'Next',
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
