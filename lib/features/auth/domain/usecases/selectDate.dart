import 'package:flutter/material.dart';

Future<void> selectDate(
  BuildContext context,
  TextEditingController dobController,
) async {
  // Calculate the date 18 years ago from today
  DateTime today = DateTime.now();
  DateTime minDate = DateTime(today.year - 18, today.month, today.day);

  DateTime? picked = await showDatePicker(
    context: context,
    firstDate: DateTime(1970),
    lastDate: minDate,
    initialDate: minDate, // Set initial date as the minimum date
  );

  if (picked != null) {
    dobController.text = picked.toIso8601String().substring(0, 10);
  }
}
