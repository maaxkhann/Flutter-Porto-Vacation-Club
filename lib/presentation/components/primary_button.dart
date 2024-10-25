import 'package:flutter/material.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';
import 'package:projectcore/shared/extensions/sized_box.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final Color? labelColor;
  final Color? bgColor;
  final Color? borderColor;
  final double borderWidth;
  final double? iconWidth;
  final double? iconheight;
  final double buttonHeight;
  final double? buttonWidth;
  final FontWeight? fontWeight;
  final double labelSize;
  final String? icon;
  final Widget? trailingWidget;
  final Color iconColor;
  final double? radius;
  final VoidCallback? onTap;
  const PrimaryButton(
      {super.key,
      required this.label,
      this.labelColor,
      this.buttonHeight = 48,
      this.buttonWidth,
      this.iconWidth = 6,
      this.icon,
      this.labelSize = 12,
      this.trailingWidget,
      this.iconColor = AppColors.white,
      this.iconheight = 6,
      this.bgColor,
      this.borderColor,
      this.borderWidth = 0,
      this.onTap,
      this.radius,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return GestureDetector(
      key: key,
      onTap: onTap,
      child: Container(
        height: buttonHeight ?? 56,
        width: buttonWidth ?? 306,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            // boxShadow: context.theme.colorTheme.containerShadow,

            // boxShadow: context.theme.colorTheme.buttonOrangeShadow,
            // border: Border.all(
            //     color: borderColor ?? theme.colorTheme.primaryColor,
            //     width: borderWidth),
            color: bgColor ?? AppColors.black,
            borderRadius: BorderRadius.circular(radius ?? 16)),
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon != null
                  ? Image.asset(icon ?? '',
                      width: iconWidth ?? 16, height: iconheight ?? 16)
                  : const SizedBox(),
              8.spaceX,
              Text(label,
                  style: AppTextstyle.headingTextStyle(
                      fontSize: labelSize,
                      fontWeight: fontWeight ?? FontWeight.normal,
                      color: labelColor ?? theme.scaffoldBackgroundColor)),
            ],
          ),
        ),
      ),
    );
  }
}
