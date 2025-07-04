import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/components/mybutton.dart';
import 'package:nearme_fn/features/auth/presentation/components/profs/my_stepper.dart';

class Prof6 extends StatefulWidget {
  const Prof6({super.key});

  @override
  State<Prof6> createState() => _Prof6State();
}

class _Prof6State extends State<Prof6> {
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
                      text: '6',
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
                const MyStepper(isCompleted: true),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: true),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: true),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: true),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              ],
            ),
            const SizedBox(height: 100),
            const Text(
              'Profile Picture',
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
                'Choose a photo that best represents you!',
                style: TextStyle(
                  color: const Color(0xFF6C7278) /* Grey */,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(40),
                    decoration: const BoxDecoration(
                      color: Color(0xFFE6F2FA),
                      shape: BoxShape.circle,
                    ),
                    width: 207,
                    height: 207,
                    child: SvgPicture.asset('././lib/images/user.svg'),
                  ),
                ),
                Positioned(
                  right: MediaQuery.of(context).size.width * 0.21,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  child: Container(
                    width: 42,
                    height: 42,
                    padding: const EdgeInsets.all(7),
                    decoration: const BoxDecoration(
                      color: Color(0xFFB0D7F1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset('././lib/images/camera.svg'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            MyButton(
              nameOfAction: 'Complete Profile',
              actionToPerform: () {
                context.goNamed('landingPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
