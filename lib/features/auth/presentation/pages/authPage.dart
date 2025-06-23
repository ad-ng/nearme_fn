import 'package:flutter/material.dart';
import 'package:nearme_fn/features/auth/presentation/components/mybutton.dart';
import 'package:nearme_fn/features/auth/presentation/components/mytextfield.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  int isLogIn = 0;
  bool rememberMe = true;
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
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email'),
                        SizedBox(height: 5),
                        MyTextField(hint: 'Email', isPassword: false),
                        SizedBox(height: 10),
                        Text('Password'),
                        SizedBox(height: 5),
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
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Text(
                              'Forgot Password?',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        MyButton(nameOfAction: 'Log In'),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(color: Colors.grey),
                            ),
                            Text('Or login with'),
                            Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Image.asset(
                                '././lib/images/google-logo.png',
                                height: 30,
                              ),
                            ),
                            SizedBox(width: 20),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Image.asset(
                                '././lib/images/apple-logo.png',
                                height: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'First Name',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.44,
                                  child: MyTextField(
                                    hint: 'First Name',
                                    isPassword: false,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Last Name',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.44,
                                  child: MyTextField(
                                    hint: 'Last Name',
                                    isPassword: false,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('Email', style: TextStyle(color: Colors.grey)),
                        MyTextField(hint: 'Email', isPassword: false),
                        SizedBox(height: 10),
                        Text(
                          'Date Of Birth',
                          style: TextStyle(color: Colors.grey),
                        ),
                        MyTextField(hint: 'Date Of Birth', isPassword: false),
                        SizedBox(height: 10),
                        Text(
                          'Phone Number',
                          style: TextStyle(color: Colors.grey),
                        ),
                        MyTextField(hint: 'Phone Number', isPassword: false),
                        SizedBox(height: 10),
                        Text(
                          'Set Password',
                          style: TextStyle(color: Colors.grey),
                        ),
                        MyTextField(hint: 'Password', isPassword: true),
                        SizedBox(height: 30),
                        MyButton(nameOfAction: 'Register'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
