import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/components/mybutton.dart';
import 'package:nearme_fn/features/auth/presentation/components/profs/interest_card.dart';
import 'package:nearme_fn/features/auth/presentation/components/profs/my_stepper.dart';

///
class Prof5 extends StatefulWidget {
  ///
  const Prof5({super.key});

  @override
  State<Prof5> createState() => _Prof5State();
}

class _Prof5State extends State<Prof5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '5',
                      style: TextStyle(
                        color: Color(0xFF007DD1),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.60,
                      ),
                    ),
                    TextSpan(
                      text: ' of 6 steps completed',
                      style: TextStyle(
                        color: Color(0xFF98939F),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.60,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const MyStepper(isCompleted: true),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: true),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: true),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: true),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: true),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: false),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              ],
            ),
            const SizedBox(height: 100),
            const Text(
              'Your Interests?',
              style: TextStyle(
                color: Color(0xFF007DD1),
                fontSize: 32,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 260.02,
              child: Text(
                'By choosing your interests it will make it easier to recommend you best deals!',
                style: TextStyle(
                  color: Color(0xFF6C7278),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Wrap(
              children: [
                InterestCard(interestName: 'Restaurant', isSelected: true),
                InterestCard(interestName: 'Hotels', isSelected: false),
                InterestCard(interestName: 'Tourism', isSelected: false),
                InterestCard(interestName: 'Transport', isSelected: false),
                InterestCard(interestName: 'Government', isSelected: false),
                InterestCard(interestName: 'News', isSelected: false),
                InterestCard(interestName: 'Restaurant', isSelected: true),
                InterestCard(interestName: 'Hotels', isSelected: true),
                InterestCard(interestName: 'Tourism', isSelected: true),
                InterestCard(interestName: 'Transport', isSelected: false),
                InterestCard(interestName: 'Government', isSelected: true),
                InterestCard(interestName: 'News', isSelected: false),
              ],
            ),
            const SizedBox(height: 100),
            MyButton(
              nameOfAction: 'continue',
              actionToPerform: () {
                context.pushNamed('prof6');
              },
            ),
          ],
        ),
      ),
    );
  }
}
