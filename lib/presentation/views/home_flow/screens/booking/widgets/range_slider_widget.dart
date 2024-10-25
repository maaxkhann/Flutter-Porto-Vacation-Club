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
  double _upperValue = 1000;

  RangeValues _currentRangeValues = const RangeValues(1000, 10000);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      activeColor: AppColors.buttonsColor,
      inactiveColor: Colors.grey.withOpacity(0.5),
      values: _currentRangeValues,
      min: 0,
      max: 10000,
      divisions: 1000,
      labels: RangeLabels(
        _currentRangeValues.start.round().toString(),
        _currentRangeValues.end.round().toString(),
      ),
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
    );
    // return Padding(
    //   padding: const EdgeInsets.only(top: 26, left: 8, right: 8, bottom: 16),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       RangeSliderFlutter(
    //         values: [_lowerValue, _upperValue],
    //         rangeSlider: true,
    //         tooltip: RangeSliderFlutterTooltip(
    //           alwaysShowTooltip: true,
    //         ),
    //         max: 10000,
    //         min: 1000,
    //         textPositionTop: -55,
    //         handlerHeight: 16,
    //         trackBar: RangeSliderFlutterTrackBar(
    //           activeTrackBarHeight: 5,
    //           inactiveTrackBarHeight: 5,
    //           activeTrackBar: BoxDecoration(
    //             borderRadius: BorderRadius.circular(10),
    //             color: AppColors.buttonsColor,
    //           ),
    //           inactiveTrackBar: BoxDecoration(
    //             borderRadius: BorderRadius.circular(10),
    //             color: AppColors.buttonsColor.withOpacity(0.3),
    //           ),
    //         ),
    //         fontSize: 15,
    //         textBackgroundColor:
    //             AppColors.buttonsColor, // Deep purple (#4D308E)
    //         onDragging: (handlerIndex, lowerValue, upperValue) {
    //           setState(() {
    //             _lowerValue = lowerValue;
    //             _upperValue = upperValue;
    //           });
    //         },
    //       ),
    //     ],
    //   ),
    // );
  }
}

class AppSliderShape extends SliderComponentShape {
  final double thumbRadius;

  const AppSliderShape({required this.thumbRadius});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.white;

    // draw icon with text painter
    const iconData = Icons.drag_handle;
    final TextPainter textPainter =
        TextPainter(textDirection: TextDirection.rtl);
    textPainter.text = TextSpan(
        text: String.fromCharCode(iconData.codePoint),
        style: TextStyle(
          fontSize: thumbRadius * 2,
          fontFamily: iconData.fontFamily,
          color: sliderTheme.thumbColor,
        ));
    textPainter.layout();

    final Offset textCenter = Offset(center.dx - (textPainter.width / 2),
        center.dy - (textPainter.height / 2));
    const cornerRadius = 4.0;

    // draw the background shape here..
    canvas.drawRRect(
      RRect.fromRectXY(Rect.fromCenter(center: center, width: 30, height: 20),
          cornerRadius, cornerRadius),
      paint,
    );

    textPainter.paint(canvas, textCenter);
  }
}
