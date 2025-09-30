import 'package:flutter/material.dart';
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? getTranslated('pending_invoice', context),
                    style: AppTextstyle.headingTextStyle(
                        color: AppColors.buttonsColor),
                  ),
                  Text(
                    subTitle ?? getTranslated('must_pay_invoice', context),
                    style: AppTextstyle.bodyTextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
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
                    contText ?? getTranslated('no_invoices_yet', context),
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
