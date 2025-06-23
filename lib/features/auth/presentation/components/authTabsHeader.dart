import 'package:flutter/material.dart';

class AuthTabsHeader extends StatefulWidget {
  const AuthTabsHeader({super.key});

  @override
  State<AuthTabsHeader> createState() => _AuthTabsHeaderState();
}

class _AuthTabsHeaderState extends State<AuthTabsHeader> {
  int isLogIn = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                color: (isLogIn == 0) ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(child: Text('Log In')),
            ),
          ),
          Tab(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: (isLogIn == 0) ? Colors.transparent : Colors.white,
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
    );
  }
}
