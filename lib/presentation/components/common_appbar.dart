import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcore/presentation/views/home_flow/screens/drawer.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({super.key}) : preferredSize = const Size.fromHeight(80.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      // leading: Padding(
      //   padding: const EdgeInsets.all(0),
      //   child: Image.asset(
      //     AppAssets.splash,
      //     height: 100,
      //     width: 100,
      //     // fit: BoxFit.cover,
      //   ),
      // ),
      automaticallyImplyLeading: false,

      title: Padding(
        padding: const EdgeInsets.only(left: 8, top: 8),
        child: Image.asset(
          AppAssets.splash,
          height: 100,
          width: 100,
          // fit: BoxFit.cover,
        ),
      ),
      actions: [
        IconButton(
          color: AppColors.buttonsColor,
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4)
              .copyWith(right: 10, top: 8),
          child: GestureDetector(
            onTap: () {
              print('aa');
              Get.to(() => MyDrawer());
            },
            child: Image.asset(
              AppAssets.dp,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
