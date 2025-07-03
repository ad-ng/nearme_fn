import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/conf/dio/dioService.dart';
import 'package:nearme_fn/features/auth/data/reposotories/auth_repo_impl.dart';
import 'package:nearme_fn/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:nearme_fn/features/auth/presentation/pages/authPage.dart';
import 'package:nearme_fn/features/auth/presentation/pages/forgotPassword.dart';
import 'package:nearme_fn/features/auth/presentation/pages/onBoardingScreens.dart';
import 'package:nearme_fn/features/auth/presentation/pages/otpPage.dart';
import 'package:nearme_fn/features/auth/presentation/pages/passwordResetPage.dart';
import 'package:nearme_fn/features/auth/presentation/pages/profile/prof1.dart';
import 'package:nearme_fn/features/auth/presentation/pages/profile/prof2.dart';
import 'package:nearme_fn/features/auth/presentation/pages/profile/prof3.dart';
import 'package:nearme_fn/features/auth/presentation/pages/profile/prof4.dart';
import 'package:nearme_fn/features/auth/presentation/pages/profile/prof5.dart';
import 'package:nearme_fn/features/auth/presentation/pages/profile/prof6.dart';
import 'package:nearme_fn/features/home/presentation/pages/landing_page.dart';
import 'package:nearme_fn/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  DioService.instance.setup();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final authRepos = AuthRepoImpl();

    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AuthCubit(authRepos))],
      child: MaterialApp.router(
        title: 'Everything NearMe',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF007DD1)),
        ),
        routerConfig: routes,
      ),
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
    GoRoute(
      name: 'landingPage',
      path: '/landingPage',
      builder: (context, state) => const LandingPage(),
    ),
    GoRoute(
      name: 'prof1',
      path: '/prof1',
      builder: (context, state) => const Prof1(),
    ),
    GoRoute(
      name: 'prof2',
      path: '/prof2',
      builder: (context, state) => const Prof2(),
    ),
    GoRoute(
      name: 'prof3',
      path: '/prof3',
      builder: (context, state) => const Prof3(),
    ),
    GoRoute(
      name: 'prof4',
      path: '/prof4',
      builder: (context, state) => const Prof4(),
    ),
    GoRoute(
      name: 'prof5',
      path: '/prof5',
      builder: (context, state) => const Prof5(),
    ),
    GoRoute(
      name: 'prof6',
      path: '/prof6',
      builder: (context, state) => const Prof6(),
    ),
  ],
);
