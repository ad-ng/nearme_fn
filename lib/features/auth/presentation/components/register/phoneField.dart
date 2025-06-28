import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneField extends StatefulWidget {
  final TextEditingController myPhone;
  const PhoneField({super.key, required this.myPhone});

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: IntlPhoneField(
        controller: widget.myPhone,
        dropdownIconPosition: IconPosition.trailing,
        style: const TextStyle(fontWeight: FontWeight.w500),
        flagsButtonMargin: const EdgeInsets.only(left: 6),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        initialCountryCode: 'RW',
        showDropdownIcon: false,
      ),
    );
  }
}
