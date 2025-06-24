import 'package:flutter/material.dart';
import 'package:nearme_fn/features/auth/presentation/components/register/mycutomdatePicker.dart';
import 'package:nearme_fn/features/auth/presentation/components/mybutton.dart';
import 'package:nearme_fn/features/auth/presentation/components/mytextfield.dart';
import 'package:nearme_fn/features/auth/presentation/components/register/phoneField.dart';

class RegisterTab extends StatefulWidget {
  const RegisterTab({super.key});

  @override
  State<RegisterTab> createState() => _RegisterTabState();
}

class _RegisterTabState extends State<RegisterTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'First Name',
                      style: TextStyle(
                        color: Color(0xFF6C7278),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.44,
                      child: const MyTextField(
                        hint: 'First Name',
                        isPassword: false,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Last Name',
                      style: TextStyle(
                        color: const Color(0xFF6C7278) /* Grey */,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.44,
                      child: const MyTextField(
                        hint: 'Last Name',
                        isPassword: false,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Email',
              style: TextStyle(
                color: Color(0xFF6C7278),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
            const MyTextField(hint: 'Email', isPassword: false),
            const SizedBox(height: 10),
            const Text(
              'Date Of Birth',
              style: TextStyle(
                color: Color(0xFF6C7278),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
            MyCustomDatePicker(dobController: TextEditingController()),
            const SizedBox(height: 10),
            const Text(
              'Phone Number',
              style: TextStyle(
                color: Color(0xFF6C7278),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
            const PhoneField(),
            const SizedBox(height: 10),
            const Text(
              'Set Password',
              style: TextStyle(
                color: const Color(0xFF6C7278),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
            const MyTextField(hint: 'Password', isPassword: true),
            const SizedBox(height: 30),
            MyButton(nameOfAction: 'Register', actionToPerform: () {}),
          ],
        ),
      ),
    );
  }
}
