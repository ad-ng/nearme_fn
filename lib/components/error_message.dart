import 'package:flutter/material.dart';

void ErrorMessage(BuildContext context, String errorMessage) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: const Color(0xFF007DD1),
      content: Text(
        errorMessage,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
  );
}
