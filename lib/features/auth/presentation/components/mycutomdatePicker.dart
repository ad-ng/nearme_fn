import 'package:flutter/material.dart';

class MyCustomDatePicker extends StatefulWidget {
  final TextEditingController dobController;
  const MyCustomDatePicker({super.key, required this.dobController});

  @override
  State<MyCustomDatePicker> createState() => _MyCustomDatePickerState();
}

class _MyCustomDatePickerState extends State<MyCustomDatePicker> {
  Future<void> selectDate() async {
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
      setState(() {
        widget.dobController.text = picked.toIso8601String().substring(0, 10);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        controller: widget.dobController,
        readOnly: true,
        style: TextStyle(fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey),
          ),
          suffixIcon: Icon(Icons.calendar_month_rounded, color: Colors.grey),
        ),
        onTap: selectDate,
      ),
    );
  }
}
