import 'package:flutter/material.dart';
import 'package:nearme_fn/features/auth/presentation/components/mybutton.dart';
import 'package:nearme_fn/features/auth/presentation/components/mytextfield.dart';

class PasswordResetPage extends StatelessWidget {
  const PasswordResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Reset Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF007DD1),
                  fontSize: 32,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 14),
            const Center(
              child: Text(
                'Type New Password and Re-type it for confirmation and Save!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF6C7278),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            const Text(
              'New Password',
              style: TextStyle(
                color: Color(0xFF6C7278),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
            const MyTextField(hint: 'New Password', isPassword: true),
            const SizedBox(height: 14.3),
            const Text(
              'Confirm New Password',
              style: TextStyle(
                color: Color(0xFF6C7278),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
            const MyTextField(hint: 'Confirm New Password', isPassword: true),
            const SizedBox(height: 70),
            MyButton(nameOfAction: 'Save New Password', actionToPerform: () {}),
          ],
        ),
      ),
    );
  }
}
