import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Image.asset(
            '././lib/images/64459a8b51318053d1eeb688128f5aab5de96a6c.png',
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Get Step-by-Step Local Information',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF007DD1),
              fontSize: 32,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Need a SIM card or visa help? We guide you through every local process.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF59606E),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
