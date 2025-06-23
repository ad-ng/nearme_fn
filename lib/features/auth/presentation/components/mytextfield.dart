import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hint;
  final bool isPassword;
  const MyTextField({super.key, required this.hint, required this.isPassword});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool hidePassword = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        obscureText: hidePassword,
        decoration: InputDecoration(
          hintText: widget.hint,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey),
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
                        (hidePassword)
                            ? Icon(Icons.visibility_off_outlined)
                            : Icon(Icons.remove_red_eye_outlined),
                  )
                  : SizedBox.shrink(),
        ),
      ),
    );
  }
}
