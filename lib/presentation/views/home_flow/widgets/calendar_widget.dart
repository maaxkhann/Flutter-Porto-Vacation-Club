import 'package:flutter/material.dart';
import 'package:projectcore/shared/shared.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

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
                  'Let’s go on a vacation',
                  style: AppTextstyle.headingTextStyle(
                      color: AppColors.buttonsColor),
                ),
                FittedBox(
                  child: Text(
                    'Find and book a great and relaxing experience.',
                    style: AppTextstyle.bodyTextStyle(
                        color: Colors.grey, fontSize: 13),
                  ),
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
        CalendarScreen(),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  CalendarScreenState createState() => CalendarScreenState();
}

class CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          // Calendar Widget
          TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            calendarFormat: CalendarFormat.month,
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.blue.shade300,
                shape: BoxShape.rectangle,
              ),
              markerDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.blue,
              ),
              markersMaxCount: 1, // Only one marker per day
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekendStyle: TextStyle(color: Colors.black),
            ),
            calendarBuilders: CalendarBuilders(
              defaultBuilder: (context, day, focusedDay) {
                return Column(
                  children: [
                    Text(
                      '${day.day}',
                      style: AppTextstyle.bodyTextStyle(fontSize: 12),
                    ),
                    _buildCalendarMarker(day),
                  ],
                );
              },
            ),
          ),
          // Color Legend
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "Color Legend",
                  style: AppTextstyle.headingTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.8)),
                ),
                16.spaceY,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildLegendItem(Colors.blue, "More than 50% booked"),
                    8.spaceY,
                    _buildLegendItem(Colors.purple, "Less than 50% booked",
                        isRect: false),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Method to build a custom calendar marker based on the day
  Widget _buildCalendarMarker(DateTime day) {
    if (day.day % 3 == 0) {
      // Blue square for more than 50%
      return Center(
        child: Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(1)),
        ),
      );
    } else {
      // Purple triangle for less than 50%
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: TriangleWidget(
            color: Colors.purple,
            size: Size(8, 8),
          ),
        ),
      );
    }
  }

  // Method to build a color legend item
  Widget _buildLegendItem(Color color, String text, {bool isRect = true}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        isRect
            ? Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: color,
                  shape: BoxShape.rectangle,
                ),
              )
            : TriangleWidget(color: color),
        SizedBox(width: 8),
        Text(
          text,
          style:
              AppTextstyle.bodyTextStyle(color: Colors.black.withOpacity(0.7)),
        ),
      ],
    );
  }
}

class TriangleWidget extends StatelessWidget {
  final Color color;
  final Size? size;

  const TriangleWidget({super.key, required this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size ?? Size(16, 16),
      painter: TrianglePainter(color),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;

  TrianglePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width / 2, 0); // Top center of the triangle
    path.lineTo(size.width, size.height); // Bottom right
    path.lineTo(0, size.height); // Bottom left
    path.close(); // Complete the triangle

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
