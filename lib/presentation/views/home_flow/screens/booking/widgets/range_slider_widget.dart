import 'package:flutter/material.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({super.key});

  @override
  RangeSliderWidgetState createState() => RangeSliderWidgetState();
}

class RangeSliderWidgetState extends State<RangeSliderWidget> {
  double _lowerValue = 1000;
  double _upperValue = 10000;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26, left: 8, right: 8, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RangeSliderFlutter(
            values: [_lowerValue, _upperValue],
            rangeSlider: true,
            tooltip: RangeSliderFlutterTooltip(
              alwaysShowTooltip: true,
            ),
            max: 10000,
            min: 1000,
            textPositionTop: -55,
            handlerHeight: 16,
            trackBar: RangeSliderFlutterTrackBar(
              activeTrackBarHeight: 5,
              inactiveTrackBarHeight: 5,
              activeTrackBar: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.buttonsColor,
              ),
              inactiveTrackBar: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.buttonsColor.withOpacity(0.3),
              ),
            ),
            fontSize: 15,
            textBackgroundColor:
                AppColors.buttonsColor, // Deep purple (#4D308E)
            onDragging: (handlerIndex, lowerValue, upperValue) {
              setState(() {
                _lowerValue = lowerValue;
                _upperValue = upperValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
