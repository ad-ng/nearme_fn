import 'package:flutter/material.dart';

///
class AuthTabsHeader extends StatefulWidget {
  ///
  const AuthTabsHeader({super.key});

  @override
  State<AuthTabsHeader> createState() => _AuthTabsHeaderState();
}

class _AuthTabsHeaderState extends State<AuthTabsHeader> {
  int isLogIn = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.17,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F6F9),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TabBar(
        onTap: (value) {
          setState(() {
            isLogIn = value;
          });
        },
        tabs: [
          Tab(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 1.5),
              decoration: BoxDecoration(
                color: (isLogIn == 0) ? Colors.white : const Color(0x7FEFF0F6),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Center(
                child: Text(
                  'Log In ',
                  style: TextStyle(
                    color: Color(0xFF232447),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 1.5),
              decoration: BoxDecoration(
                color: (isLogIn == 0) ? Colors.transparent : Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xFF7D7D91),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ),
        ],
        indicator: const BoxDecoration(),
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.black,
        dividerHeight: 0,
        indicatorSize: TabBarIndicatorSize.values[0],
        unselectedLabelStyle: const TextStyle(decorationColor: Colors.white),
      ),
    );
  }
}
