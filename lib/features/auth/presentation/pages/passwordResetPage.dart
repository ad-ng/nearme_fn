import 'package:flutter/material.dart';
import 'package:nearme_fn/features/auth/presentation/components/mybutton.dart';
import 'package:nearme_fn/features/auth/presentation/components/mytextfield.dart';

class PasswordResetPage extends StatelessWidget {
  const PasswordResetPage({super.key});

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
                'Reset Password',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                'Type New Password and Re-type \nit for confirmation and save!',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text('New Password', style: TextStyle(color: Colors.grey)),
            MyTextField(hint: 'New Password', isPassword: true),
            SizedBox(height: 15),
            Text('Confirm New Password', style: TextStyle(color: Colors.grey)),
            MyTextField(hint: 'Confirm New Password', isPassword: true),
            SizedBox(height: MediaQuery.of(context).size.height * 0.12),
            MyButton(nameOfAction: 'Save New Password', actionToPerform: () {}),
          ],
        ),
      ),
    );
  }
}
