import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nearme_fn/features/auth/presentation/components/authTabsHeader.dart';
import 'package:nearme_fn/features/auth/presentation/components/loginTab.dart';
import 'package:nearme_fn/features/auth/presentation/components/registerTab.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  int isLogIn = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Image.asset('././lib/images/Pattern.png'),
              Column(
                children: [
                  SvgPicture.asset(
                    '././lib/images/Logomark.svg',
                    width: 31,
                    height: 31,
                  ),
                  const Center(
                    child: Text(
                      'Get Started now',
                      style: TextStyle(
                        color: const Color(0xFF007DD1),
                        fontSize: 32,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Create an account or log in\n to explore ',
                          style: TextStyle(
                            color: const Color(0xFF6C7278) /* Grey */,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        ),
                        TextSpan(
                          text: 'Everything',
                          style: TextStyle(
                            color: const Color(0xFF007DD1),
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
                  const SizedBox(height: 28.11),
                  const AuthTabsHeader(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  const Expanded(
                    child: TabBarView(children: [LoginTab(), RegisterTab()]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
