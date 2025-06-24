import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/features/auth/presentation/components/onboarding/page1.dart';
import 'package:nearme_fn/features/auth/presentation/components/onboarding/page2.dart';
import 'package:nearme_fn/features/auth/presentation/components/onboarding/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({super.key});

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  final PageController _pageController = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF007DD1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextButton(
              onPressed: () => context.goNamed('auth'),
              child: const Text(
                'Skip',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w700,
                  height: 1.60,
                  letterSpacing: 0.20,
                ),
              ),
            ),
          ),
          const SizedBox(width: 19),
        ],
      ),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [const Page1(), const Page2(), const Page3()],
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.13,
            left: MediaQuery.of(context).size.width * 0.43,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: Color(0xFF007DD1),
                dotColor: Color(0xFFD9D9D9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
