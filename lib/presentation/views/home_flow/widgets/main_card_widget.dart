import 'package:flutter/material.dart';
import 'package:projectcore/shared/shared.dart';

import 'custom_linear_indicator.dart';

class MainCardWidget extends StatelessWidget {
  final String title;
  const MainCardWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  AppAssets.proto,
                  height: 85,
                  width: 85,
                ),
                12.spaceX,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextstyle.headingTextStyle(
                          color: AppColors.buttonsColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      8.spaceY,
                      Wrap(
                        // 👈 better than Row for chips
                        spacing: 4,
                        runSpacing: 4,
                        children: [
                          _chip('Cabana Zone'),
                          _chip('#245324'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            16.spaceY,
            Wrap(
              spacing: 16,
              runSpacing: 8,
              children: [
                statItem(
                  value: '20',
                  label: 'Remaining',
                  color: AppColors.buttonsColor,
                ),
                statItem(
                  value: '5',
                  label: 'Consumed',
                  color: const Color(0xFFBB2FBD),
                ),
                statItem(
                  value: '5',
                  label: 'Rental',
                  color: const Color(0xFF1BBDE9),
                ),
                statItem(
                  value: '20',
                  label: 'Nights',
                ),
              ],
            ),
            12.spaceY,
            CustomLinearIndicator(),
          ],
        ),
      ),
    );
  }
}

Widget _chip(String text) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.1),
      borderRadius: BorderRadius.circular(100),
    ),
    child: Text(text),
  );
}

Widget statItem({
  required String value,
  required String label,
  Color? color,
}) {
  return SizedBox(
    width: 80, // adjust based on design
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          value,
          style: AppTextstyle.headingTextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(0.7),
          ),
        ),
        4.spaceY,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (color != null) ...[
              CircleAvatar(radius: 4, backgroundColor: color),
              4.spaceX,
            ],
            Expanded(
              child: Text(
                label,
                softWrap: true, // ✅ allows multiline
                textAlign: TextAlign.center,
                style: AppTextstyle.bodyTextStyle(
                  fontSize: 13,
                  color: Colors.grey.withOpacity(0.7),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
