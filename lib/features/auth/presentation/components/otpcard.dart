import 'package:flutter/material.dart';

class OtpCard extends StatelessWidget {
  const OtpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52,
      height: 52,
      child: TextField(
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFF595A65),
          fontSize: 24,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
          height: 1.35,
        ),
        maxLength: 1,
        decoration: InputDecoration(
          isDense: true,
          counterText: '',
          filled: true,
          fillColor: const Color(0xFFE5E7EA),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.blue, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
