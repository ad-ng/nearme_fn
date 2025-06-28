import 'package:flutter/material.dart';
import 'package:nearme_fn/features/auth/domain/usecases/select_date.dart';

class MyCustomDatePicker extends StatefulWidget {
  final TextEditingController dobController;
  const MyCustomDatePicker({super.key, required this.dobController});

  @override
  State<MyCustomDatePicker> createState() => _MyCustomDatePickerState();
}

class _MyCustomDatePickerState extends State<MyCustomDatePicker> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53.88,
      child: TextField(
        controller: widget.dobController,
        readOnly: true,
        style: const TextStyle(
          color: Color(0xFF2E2E2E),
          fontSize: 18,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          hintText: 'Date Of Birth',
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11.72),
            borderSide: const BorderSide(color: Color(0xFFEDF1F3)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFEDF1F3)),
          ),
          suffixIcon: const Icon(
            Icons.calendar_month_rounded,
            color: Colors.grey,
          ),
        ),
        onTap: () => selectDate(context, widget.dobController),
      ),
    );
  }
}
