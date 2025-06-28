import 'package:flutter/material.dart';

/// a function to select date and make sure user is older than 18
Future<void> selectDate(
  BuildContext context,
  TextEditingController dobController,
) async {
  // Calculate the date 18 years ago from today
  final today = DateTime.now();
  final minDate = DateTime(today.year - 18, today.month, today.day);

  final picked = await showDatePicker(
    context: context,
    firstDate: DateTime(1970),
    lastDate: minDate,
    initialDate: minDate, // Set initial date as the minimum date
  );

  if (picked != null) {
    dobController.text = picked.toIso8601String().substring(0, 10);
  }
}
