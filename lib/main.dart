import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/conf/dio/dioService.dart';
import 'package:nearme_fn/features/auth/presentation/pages/authPage.dart';
import 'package:nearme_fn/features/auth/presentation/pages/forgotPassword.dart';
import 'package:nearme_fn/features/auth/presentation/pages/onBoardingScreens.dart';
import 'package:nearme_fn/features/auth/presentation/pages/otpPage.dart';
import 'package:nearme_fn/features/auth/presentation/pages/passwordResetPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioService.instance.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Everything NearMe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF007DD1)),
      ),
      routerConfig: routes,
    );
  }
}

final GoRouter routes = GoRouter(
  initialLocation: '/',

  routes: [
    GoRoute(
      name: '/',
      path: '/',
      builder: (context, state) => const OnBoardingScreens(),
    ),
    GoRoute(
      name: 'auth',
      path: '/auth',
      builder: (context, state) => const AuthPage(),
    ),
    GoRoute(
      name: 'forgotPassword',
      path: '/forgotPassword',
      builder: (context, state) => const ForgotPassword(),
    ),
    GoRoute(
      name: 'otpPage',
      path: '/otpPage',
      builder: (context, state) => const OTPPage(),
    ),
    GoRoute(
      name: 'passwordResetPage',
      path: '/passwordResetPage',
      builder: (context, state) => const PasswordResetPage(),
    ),
    GoRoute(
      name: 'onboarding',
      path: '/onboarding',
      builder: (context, state) => const OnBoardingScreens(),
    ),
  ],
);
