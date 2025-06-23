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
    // return Container(
    //   height: 56.22,
    //   decoration: BoxDecoration(
    //     color: Colors.blue,
    //     borderRadius: BorderRadius.circular(12),
    //   ),
    //   child: Center(
    //     child: TextButton(
    //       onPressed: () => widget.actionToPerform(),
    //       child: Text(
    //         widget.nameOfAction,
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontSize: 15,
    //           fontWeight: FontWeight.bold,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    return Container(
      width: 383,
      height: 56.22,
      padding: const EdgeInsets.symmetric(horizontal: 28.11, vertical: 11.71),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFF007DD1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.71),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x7A031043),
            blurRadius: 2.34,
            offset: Offset(0, 1.17),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 11.71,
        children: [
          GestureDetector(
            onTap: () => widget.actionToPerform(),
            child: Text(
              'Register',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
