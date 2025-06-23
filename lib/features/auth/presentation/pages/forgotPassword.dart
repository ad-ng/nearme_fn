import 'package:flutter/material.dart';
import 'package:nearme_fn/features/auth/presentation/components/mybutton.dart';
import 'package:nearme_fn/features/auth/presentation/components/mytextfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Forgot Your \nPassword?',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'We will send you a reset OTP on\nyour ',
                  style: TextStyle(color: Colors.grey),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Registered Email Address!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Text('Email', style: TextStyle(color: Colors.grey)),
            MyTextField(hint: 'Email', isPassword: false),
            SizedBox(height: 40),
            MyButton(nameOfAction: 'Send Reset Link'),
          ],
        ),
      ),
    );
  }
}
