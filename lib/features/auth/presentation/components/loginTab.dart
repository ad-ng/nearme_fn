import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/features/auth/presentation/components/mybutton.dart';
import 'package:nearme_fn/features/auth/presentation/components/mytextfield.dart';

class LoginTab extends StatefulWidget {
  const LoginTab({super.key});

  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  bool rememberMe = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: TextStyle(
              color: const Color(0xFF6C7278),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),

          MyTextField(hint: 'Email', isPassword: false),
          SizedBox(height: 18.74),
          Text(
            'Password',
            style: TextStyle(
              color: const Color(0xFF6C7278),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),
          MyTextField(hint: 'Password', isPassword: true),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: rememberMe,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    },
                  ),
                  Text(
                    'Remember me',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF6C7278),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 1.60,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () => context.pushNamed('forgotPassword'),
                child: Text(
                  'Forgot Password ?',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: const Color(0xFF2E2E2E),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 18.11),
          MyButton(nameOfAction: 'Log In', actionToPerform: () {}),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(color: const Color(0xFFEDF1F3)),
              ),
              Text(
                'Or login with',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF6C7278),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.60,
                ),
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(color: const Color(0xFFEDF1F3)),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 82.57,
                height: 56.22,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.17,
                      color: const Color(0xFFEFF0F6),
                    ),
                    borderRadius: BorderRadius.circular(11.71),
                  ),
                ),
                child: SvgPicture.asset('././lib/images/google.svg'),
              ),
              SizedBox(width: 17.57),
              Container(
                width: 82.57,
                height: 56.22,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.17,
                      color: const Color(0xFFEFF0F6),
                    ),
                    borderRadius: BorderRadius.circular(11.71),
                  ),
                ),
                child: SvgPicture.asset('././lib/images/apple-logo.svg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
