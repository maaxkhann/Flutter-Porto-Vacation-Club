import 'package:flutter/material.dart';
import 'package:projectcore/presentation/components/common_appbar.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/shared/shared.dart';
import '../home_flow/widgets/main_card_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('My Profile',
                    style: AppTextstyle.headingTextStyle(
                        color: AppColors.buttonsColor)),
                12.spaceY,
                // Profile Information
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/images/dp.png'),
                        ),
                        20.spaceX,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmed Massoud',
                              style: AppTextstyle.headingTextStyle(
                                  fontSize: 20, color: AppColors.buttonsColor),
                            ),
                            SizedBox(height: 0),
                            Text(
                              'Joined 12 Aug, 2015',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12),

                // Personal Info Card
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Personal Info',
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 16, color: AppColors.buttonsColor),
                        ),
                        SizedBox(height: 16),
                        Divider(color: Colors.grey[300]),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InfoRow(
                                      label: 'Full Name',
                                      value: 'Ahmed Massoud'),
                                  SizedBox(height: 16),
                                  InfoRow(
                                      label: 'Email', value: 'Ahmed@gmail.com'),
                                  SizedBox(height: 16),
                                  InfoRow(
                                      label: 'Password',
                                      value: '***************'),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InfoRow(
                                      label: 'Mobile', value: '0100123456789'),
                                  SizedBox(height: 16),
                                  InfoRow(
                                      label: 'BP Number',
                                      value: '102030405060'),
                                  SizedBox(height: 16),
                                  TextButton(
                                    onPressed: () {
                                      // Handle password change
                                    },
                                    child: Text(
                                      'Change Password',
                                      style: TextStyle(
                                          color: AppColors.buttonsColor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                24.spaceY,
                TabBar(
                  indicatorColor: AppColors.buttonsColor,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  dividerColor: AppColors.buttonsColor.withOpacity(0.5),
                  tabs: [
                    Tab(text: 'Sokhna'),
                    Tab(text: 'Marina'),
                    Tab(text: 'Sharm'),
                    Tab(text: 'Matrouh'),
                  ],
                ),
                12.spaceY,
                SizedBox(
                  height: 220,
                  child: TabBarView(
                    children: [
                      MainCardWidget(title: 'Porto Sonkha'),
                      MainCardWidget(title: 'Marina'),
                      MainCardWidget(title: 'Sharm'),
                      MainCardWidget(title: 'Matrouh'),
                    ],
                  ),
                ),
                12.spaceY,
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Project Info',
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 16, color: AppColors.buttonsColor),
                        ),
                        SizedBox(height: 16),
                        Divider(color: Colors.grey[300]),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InfoRow(label: 'Project', value: 'PBC'),
                                  SizedBox(height: 16),
                                  InfoRow(
                                      label: 'Contract Number',
                                      value: '90430830893459'),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InfoRow(label: 'Zone', value: 'BUZA'),
                                  SizedBox(height: 16),
                                  InfoRow(label: '', value: ''),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                24.spaceY,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const InfoRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextstyle.bodyTextStyle(color: AppColors.darkGrey),
        ),
        Text(
          value,
          style: AppTextstyle.bodyTextStyle(
            color: AppColors.lightBlack,
          ),
        ),
      ],
    );
  }
}
