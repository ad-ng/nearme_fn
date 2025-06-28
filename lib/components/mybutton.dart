import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String nameOfAction;
  final Function actionToPerform;
  const MyButton({
    super.key,
    required this.nameOfAction,
    required this.actionToPerform,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.22,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: TextButton(
          onPressed: () => widget.actionToPerform(),
          child: Text(
            widget.nameOfAction,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
