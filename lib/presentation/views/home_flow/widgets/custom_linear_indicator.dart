import 'package:flutter/material.dart';
import 'package:projectcore/shared/constants/app_colors.dart';

class CustomLinearIndicator extends StatelessWidget {
  const CustomLinearIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: AppColors.buttonsColor
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Row(
          children: [
            Expanded(
              flex: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFBB2FBD),

                  // borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Expanded(
              flex: 20,
              child: Container(
                color: Color(0xFF1BBDE9),
              ),
            ),
            Expanded(
              flex: 60,
              child: Container(
                color: AppColors.buttonsColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
