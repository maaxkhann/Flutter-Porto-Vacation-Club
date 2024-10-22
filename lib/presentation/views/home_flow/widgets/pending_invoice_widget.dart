import 'package:flutter/material.dart';
import 'package:projectcore/presentation/components/primary_button.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/shared.dart';

class PendingInvoiceWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? contText;
  final String? image;
  final double? imageHeight;
  final Widget? widget;
  const PendingInvoiceWidget(
      {super.key,
      this.title,
      this.subTitle,
      this.contText,
      this.image,
      this.imageHeight,
      this.widget});

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
                  title ?? 'Pending Invoice',
                  style: AppTextstyle.headingTextStyle(
                      color: AppColors.buttonsColor),
                ),
                Text(
                  subTitle ?? 'You must pay your invoice to start booking',
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
                      // Navigator.pop(context);
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
                      // Navigator.pop(context);
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
        widget ??
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Image.asset(
                    image ?? AppAssets.invoice,
                    height: imageHeight ?? 44,
                  ),
                  10.spaceX,
                  Text(
                    contText ?? 'No Invoices added yet',
                    style: AppTextstyle.bodyTextStyle(
                        color: AppColors.buttonsColor),
                  )
                ],
              ),
            ),
      ],
    );
  }
}
