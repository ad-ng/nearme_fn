import 'package:flutter/material.dart';

///
class MyStepper extends StatelessWidget {
  ///
  const MyStepper({required this.isCompleted, super.key});

  ///
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.13,
      height: 6,
      decoration: BoxDecoration(
        color: isCompleted ? const Color(0xFF007DD1) : const Color(0xFFB0D7F1),
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
