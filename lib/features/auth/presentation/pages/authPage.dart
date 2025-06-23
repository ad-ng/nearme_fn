import 'package:flutter/material.dart';
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
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Get Started now',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Create an account or log in to \nexplore ',
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Everything',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            AuthTabsHeader(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Expanded(child: TabBarView(children: [LoginTab(), RegisterTab()])),
          ],
        ),
      ),
    );
  }
}
