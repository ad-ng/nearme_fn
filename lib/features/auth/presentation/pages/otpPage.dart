import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/components/mybutton.dart';
import 'package:nearme_fn/features/auth/presentation/components/otpcard.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset(
                '././lib/images/Logomark.svg',
                width: 31,
                height: 31,
              ),
            ),
            const SizedBox(height: 40),
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
            const SizedBox(height: 14.3),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'We have sent you a reset OTP on\na provided ',
                  style: TextStyle(
                    color: Color(0xFF6C7278),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Email Address!',
                      style: TextStyle(
                        color: Color(0xFF6C7278),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 44),
            const Text(
              'Enter OTP',
              style: TextStyle(
                color: Color(0xFF6C7278),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [OtpCard(), OtpCard(), OtpCard(), OtpCard(), OtpCard()],
            ),
            const SizedBox(height: 120),
            MyButton(
              nameOfAction: 'Submit OTP',
              actionToPerform: () {
                context.pushNamed('passwordResetPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
