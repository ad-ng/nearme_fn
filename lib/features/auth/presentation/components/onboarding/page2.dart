import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Image.asset(
            '././lib/images/643251e6804629f8b90afd615d1f623ec854b11a.png',
            fit: BoxFit.cover,
          ),
        ),
        const Text(
          'Book And Access Trusted Sesrvices',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF007DD1),
            fontSize: 32,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          'From accommodations to airport rides — browse top-rated options with ease.',
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
