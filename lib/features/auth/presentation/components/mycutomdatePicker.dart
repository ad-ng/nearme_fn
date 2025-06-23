import 'package:flutter/material.dart';
import 'package:nearme_fn/features/auth/domain/usecases/selectDate.dart';

class MyCustomDatePicker extends StatefulWidget {
  final TextEditingController dobController;
  const MyCustomDatePicker({super.key, required this.dobController});

  @override
  State<MyCustomDatePicker> createState() => _MyCustomDatePickerState();
}

class _MyCustomDatePickerState extends State<MyCustomDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        controller: widget.dobController,
        readOnly: true,
        style: TextStyle(fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          hintText: 'Date Of Birth',
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
        onTap: () => selectDate(context, widget.dobController),
      ),
    );
  }
}
