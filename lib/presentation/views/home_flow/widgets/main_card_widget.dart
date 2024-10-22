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
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 15),
      child: Column(
        children: [
          FittedBox(
            child: Row(
              children: [
                Image.asset(
                  AppAssets.proto,
                  height: 85,
                  width: 85,
                ),
                12.spaceX,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextstyle.headingTextStyle(
                          color: AppColors.buttonsColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    8.spaceY,
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Text('Cabana Zone'),
                        ),
                        4.spaceX,
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Text('#245324'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          16.spaceY,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    '20',
                    style: AppTextstyle.headingTextStyle(
                        fontSize: 16, color: Colors.black.withOpacity(0.7)),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: AppColors.buttonsColor,
                      ),
                      4.spaceX,
                      Text(
                        'Remaining',
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 13, color: Colors.grey.withOpacity(0.7)),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '5',
                    style: AppTextstyle.headingTextStyle(
                        fontSize: 16, color: Colors.black.withOpacity(0.7)),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: Color(0xFFBB2FBD),
                      ),
                      4.spaceX,
                      Text(
                        'Consumed',
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 13, color: Colors.grey.withOpacity(0.7)),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '5',
                    style: AppTextstyle.headingTextStyle(
                        fontSize: 16, color: Colors.black.withOpacity(0.7)),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: Color(0xFF1BBDE9),
                      ),
                      4.spaceX,
                      Text(
                        'Rental',
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 13, color: Colors.grey.withOpacity(0.7)),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '20',
                    style: AppTextstyle.headingTextStyle(
                        fontSize: 16, color: Colors.black.withOpacity(0.7)),
                  ),
                  Row(
                    children: [
                      // CircleAvatar(
                      //   radius: 4,
                      //   backgroundColor: AppColors.buttonsColor,
                      // ),
                      // 4.spaceX,
                      Text(
                        'Nights',
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 13, color: Colors.grey.withOpacity(0.7)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          12.spaceY,
          CustomLinearIndicator(),
        ],
      ),
    );
  }
}
