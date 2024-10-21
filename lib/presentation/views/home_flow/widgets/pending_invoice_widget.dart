import 'package:flutter/material.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/shared.dart';

class PendingInvoiceWidget extends StatelessWidget {
  const PendingInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pending Invoice',
                  style: AppTextstyle.headingTextStyle(
                      color: AppColors.buttonsColor),
                ),
                Text(
                  'You must pay your invoice to start booking',
                  style: AppTextstyle.bodyTextStyle(
                      color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    padding: EdgeInsets.only(left: 4),
                    constraints: BoxConstraints(),
                  ),
                ),
                5.spaceX,
                CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    padding: EdgeInsets.only(left: 4),
                    constraints: BoxConstraints(),
                  ),
                ),
              ],
            ),
          ],
        ),
        12.spaceY,
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Image.asset(
                AppAssets.invoice,
                height: 44,
              ),
              10.spaceX,
              Text(
                'No Invoices added yet',
                style:
                    AppTextstyle.bodyTextStyle(color: AppColors.buttonsColor),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Remain in 5 nights',
                    style: AppTextstyle.bodyTextStyle(
                        color: Colors.grey, fontSize: 14),
                  ),
                  Text(
                    'Porto Sonkha',
                    style: AppTextstyle.headingTextStyle(
                        color: AppColors.buttonsColor, fontSize: 18),
                  ),
                ],
              ),
              10.spaceX,
              Container(
                height: 44,
                width: 128,
                decoration: BoxDecoration(
                  color: AppColors.buttonsColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                // padding: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    'Book Now',
                    style: AppTextstyle.bodyTextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
