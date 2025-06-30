import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/components/mybutton.dart';
import 'package:nearme_fn/features/auth/presentation/components/profs/my_stepper.dart';

///
class Prof1 extends StatefulWidget {
  ///
  const Prof1({super.key});

  @override
  State<Prof1> createState() => _Prof1State();
}

class _Prof1State extends State<Prof1> {
  List<String> languagesItems = [
    'Select Language',
    'English',
    'French',
    'Kinyarwanda',
  ];
  String languagesDropDownValue = 'Select Language';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
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
                      text: '1',
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
                const MyStepper(isCompleted: false),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: false),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: false),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: false),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                const MyStepper(isCompleted: false),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              ],
            ),
            const SizedBox(height: 100),
            const Text(
              'Language Preference',
              style: TextStyle(
                color: Color(0xFF007DD1),
                fontSize: 32,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(right: 100),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Everything',
                      style: TextStyle(
                        color: Color(0xFF6C7278),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                    TextSpan(
                      text: ' delivered in your Language of your Choice.',
                      style: TextStyle(
                        color: Color(0xFF6C7278),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 84.11),
            const Text(
              'Language',
              style: TextStyle(
                color: Color(0xFF6C7278),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
            Container(
              height: 53.88,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.71),
                border: Border.all(width: 1.17, color: const Color(0xFFEDF1F3)),
              ),
              child: DropdownButton<String>(
                value: languagesDropDownValue,
                underline: const SizedBox(),
                isExpanded: true,
                style: const TextStyle(
                  color: Color(0xFF2E2E2E),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
                items:
                    languagesItems.map((String item) {
                      return DropdownMenuItem(value: item, child: Text(item));
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    languagesDropDownValue = value!;
                  });
                },
              ),
            ),
            const SizedBox(height: 129),
            MyButton(
              nameOfAction: 'Continue',
              actionToPerform: () {
                context.pushNamed('prof2');
              },
            ),
          ],
        ),
      ),
    );
  }
}
