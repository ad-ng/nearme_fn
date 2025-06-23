import 'package:flutter/material.dart';
import 'package:nearme_fn/features/auth/presentation/pages/loginTab.dart';
import 'package:nearme_fn/features/auth/presentation/pages/registerTab.dart';

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
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
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
            SizedBox(height: 20),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(0),
              child: TabBar(
                onTap: (value) {
                  setState(() {
                    isLogIn = value;
                  });
                },
                tabs: [
                  Tab(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color:
                            (isLogIn == 0) ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(child: Text('Log In')),
                    ),
                  ),
                  Tab(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color:
                            (isLogIn == 0) ? Colors.transparent : Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(child: Text('Sign Up')),
                    ),
                  ),
                ],
                indicator: BoxDecoration(),
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                dividerHeight: 0,
                indicatorSize: TabBarIndicatorSize.values[0],
                unselectedLabelStyle: TextStyle(decorationColor: Colors.white),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Expanded(child: TabBarView(children: [LoginTab(), RegisterTab()])),
          ],
        ),
      ),
    );
  }
}
