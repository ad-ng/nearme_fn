import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/components/mybutton.dart';
import 'package:nearme_fn/components/mytextfield.dart';
import 'package:nearme_fn/features/auth/presentation/components/profs/my_stepper.dart';

class Prof2 extends StatelessWidget {
  const Prof2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '2',
                      style: TextStyle(
                        color: Color(0xFF007DD1),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.60,
                      ),
                    ),
                    TextSpan(
                      text: ' of 6 steps completed',
                      style: TextStyle(
                        color: Color(0xFF98939F),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.60,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const MyStepper(isCompleted: true),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: true),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: false),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: false),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: false),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: false),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              ],
            ),
            const SizedBox(height: 100),
            const Text(
              'Name Confirmation',
              style: TextStyle(
                color: Color(0xFF007DD1),
                fontSize: 32,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 260.02,
              child: Text(
                'Are these the name you want to keep using?',
                style: TextStyle(
                  color: Color(0xFF6C7278),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
            const SizedBox(height: 44),
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
            MyTextField(
              hint: 'First Name',
              isPassword: false,
              myController: TextEditingController(),
            ),
            const SizedBox(height: 15),
            const Text(
              'Last Name',
              style: TextStyle(
                color: Color(0xFF6C7278),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
            MyTextField(
              hint: 'Last Name',
              isPassword: false,
              myController: TextEditingController(),
            ),
            const SizedBox(height: 74),
            MyButton(
              nameOfAction: 'Continue',
              actionToPerform: () {
                context.pushNamed('prof3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
