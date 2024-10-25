import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:projectcore/shared/constants/app_assets.dart';
import 'package:projectcore/shared/constants/app_colors.dart';
import 'package:projectcore/shared/constants/app_textstyle.dart';

class BookingDateSelection extends StatefulWidget {
  const BookingDateSelection({super.key});

  @override
  BookingDateSelectionState createState() => BookingDateSelectionState();
}

class BookingDateSelectionState extends State<BookingDateSelection> {
  TextEditingController dateController = TextEditingController();
  DateTime? _selectedDate;
  DateTime firstDate = DateTime(2024, 11, 7);
  DateTime lastDate = DateTime(2024, 11, 13);

  Future<void> _selectDate(BuildContext context) async {
    DateTime? tempPickedDate = _selectedDate ?? firstDate;

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select a date'),
          content: SizedBox(
            height: 300,
            width: 300,
            child: Column(
              children: [
                Expanded(
                  child: CalendarDatePicker(
                    initialDate: tempPickedDate!,
                    firstDate: firstDate,
                    lastDate:
                        DateTime(2100), // Allows month and year navigation
                    onDateChanged: (DateTime date) {
                      if (date.isAfter(
                              firstDate.subtract(const Duration(days: 1))) &&
                          date.isBefore(
                              lastDate.add(const Duration(days: 1)))) {
                        // Only allow valid dates within the allowed range
                        tempPickedDate = date;
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back(); // Close the dialog without changes
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedDate = tempPickedDate;
                  dateController.text = _selectedDate != null
                      ? DateFormat('dd MMM, yyyy').format(_selectedDate!)
                      : '';
                });
                Get.back(); // Close the dialog and apply changes
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _resetDate() {
    setState(() {
      _selectedDate = null;
      dateController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: dateController,
        readOnly: true,
        onTap: () => _selectDate(context),
        decoration: InputDecoration(
          hintText: 'Choose Date',
          hintStyle: AppTextstyle.bodyTextStyle(
              color: AppColors.darkGreyishBlue, fontWeight: FontWeight.w500),
          prefixIcon: Image.asset(AppAssets.date,
              color: AppColors.darkGreyishBlue, width: 16, height: 16),
          suffixIcon: _selectedDate != null
              ? IconButton(
                  icon: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: AppColors.lightShadeBlue,
                          shape: BoxShape.circle),
                      child: const Icon(
                        Icons.clear,
                        color: AppColors.darkVoilet,
                        size: 16,
                      )),
                  onPressed: _resetDate,
                )
              : null,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFDDDDDD)),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFDDDDDD)),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFDDDDDD)),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
    );
  }
}
