import 'package:flutter/material.dart';
import 'package:nearme_fn/features/home/presentation/components/business_card.dart';

///
class BusinessPage extends StatelessWidget {
  ///
  const BusinessPage({required this.title, super.key});

  ///
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          'Back',
          style: TextStyle(
            color: Color(0xFF007DD1),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Private Taxi',
              style: TextStyle(
                color: Color(0xFF007DD1),
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_sharp),
                hintText: 'Search Business',
                hintStyle: const TextStyle(
                  color: Color(0xFF959595),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFF959595)),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFF959595)),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 31),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => BusinessCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
