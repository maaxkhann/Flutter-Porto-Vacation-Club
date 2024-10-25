import 'package:flutter/material.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/shared.dart';

class CancelReasonWidget extends StatefulWidget {
  const CancelReasonWidget({super.key});

  @override
  CancelReasonWidgetState createState() => CancelReasonWidgetState();
}

class CancelReasonWidgetState extends State<CancelReasonWidget> {
  String? selectedReason;
  final TextEditingController otherReasonController = TextEditingController();

  @override
  void dispose() {
    otherReasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildRadioTile(
            'Change dates',
            'I need to adjust my booking dates because I have a new appointment at the same time.',
          ),
          buildRadioTile(
            'I changed my mind',
            "I'm canceling because I've chosen to take a different path, but I might return in the future.",
          ),
          buildRadioTile(
            'Something Occurred',
            'I have to cancel my booking due to an unexpected event that has come up.',
          ),
          buildRadioTile(
              'Other', 'Please provide the reason for your cancellation.',
              showTextField: true),
        ],
      ),
    );
  }

  Widget buildRadioTile(String title, String subtitle,
      {bool showTextField = false}) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        setState(() {
          selectedReason = title;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: selectedReason == title ? Colors.purple : Colors.white,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            // Radio<String>(
            //   value: title,
            //   groupValue: selectedReason,
            //   onChanged: (value) {
            //     setState(() {
            //       selectedReason = value;
            //     });
            //   },
            //   activeColor: Colors.purple,
            // ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: AppTextstyle.bodyTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.buttonsColor,
                        ),
                      ),
                      selectedReason == title
                          ? Image.asset(
                              AppAssets.tick,
                              height: 20,
                            )
                          : Container(
                              height: 14,
                              width: 14,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                            ),
                    ],
                  ),
                  if (subtitle.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        subtitle,
                        style: AppTextstyle.bodyTextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  8.spaceY,
                  if (showTextField)
                    TextField(
                      controller: otherReasonController,
                      maxLength: 500,
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: 'Type here ...',
                        hintStyle: AppTextstyle.bodyTextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.buttonsColor,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
