import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    required this.hint,
    required this.isPassword,
    required this.myController,
    super.key,
  });

  /// assigning individual controller to each textfield
  final TextEditingController myController;

  /// a hint for textfield
  final String hint;

  /// checking if textfield is for password
  final bool isPassword;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool hidePassword = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53.88,
      child: TextField(
        controller: widget.myController,
        obscureText: hidePassword,
        obscuringCharacter: '*',
        style: const TextStyle(
          color: Color(0xFF2E2E2E),
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          hintText: widget.hint,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFEDF1F3)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFEDF1F3)),
          ),
          suffixIcon:
              (widget.isPassword)
                  ? IconButton(
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                    icon:
                        hidePassword
                            ? const Icon(Icons.visibility_off_outlined)
                            : const Icon(Icons.remove_red_eye_outlined),
                  )
                  : const SizedBox.shrink(),
        ),
      ),
    );
  }
}
