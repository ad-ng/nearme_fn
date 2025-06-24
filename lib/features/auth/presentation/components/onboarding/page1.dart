import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Image.asset(
            '././lib/images/Location--5ec7b83401d0360018d4bc71.png',
            fit: BoxFit.cover,
          ),
        ),
        const Text(
          'Find Everything You Need Nearby',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF007DD1),
            fontSize: 32,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          'Instantly locate services, shops, and spots near you — wherever you are.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF59606E),
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
