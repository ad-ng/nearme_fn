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
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: TextButton(
          onPressed: () => widget.actionToPerform(),
          child: Text(
            widget.nameOfAction,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
