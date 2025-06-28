import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/features/auth/presentation/components/mybutton.dart';
import 'package:nearme_fn/features/auth/presentation/components/mytextfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset('././lib/images/Pattern.png', width: 300),
          ),
          Padding(
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
                const SizedBox(height: 58),
                const Center(
                  child: SizedBox(
                    width: 308.04,
                    child: Text(
                      'Forgot Your Password?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF007DD1),
                        fontSize: 32,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: SizedBox(
                    width: 260.02,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'We will send you a reset OTP on your ',
                            style: TextStyle(
                              color: Color(0xFF6C7278),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Registered Email Address!',
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
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
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
                MyTextField(
                  myController: emailController,
                  hint: 'Email',
                  isPassword: false,
                ),
                const SizedBox(height: 58),
                MyButton(
                  nameOfAction: 'Send Reset Link',
                  actionToPerform: () {
                    context.pushNamed('otpPage');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
