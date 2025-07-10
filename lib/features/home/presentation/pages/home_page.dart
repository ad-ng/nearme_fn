import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/features/home/presentation/components/article_card.dart';
import 'package:nearme_fn/features/home/presentation/components/home_cat.dart';
import 'package:nearme_fn/features/home/presentation/components/popular_card.dart';
import 'package:nearme_fn/features/home/presentation/components/recommended_card.dart';

/// home page
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Colors.amberAccent,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Location',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Kigali, Rwanda',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      '././lib/images/language.svg',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () => context.pushNamed('notificationsPage'),
                      child: Badge(
                        label: const Text('2'),
                        child: SvgPicture.asset(
                          '././lib/images/bell.svg',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeCat(
                  homeCatTitle: 'Travel Info',
                  homeCatIcon: '././lib/images/Frame 427319335.svg',
                  isDocument: true,
                ),
                HomeCat(
                  homeCatTitle: 'Transport Services',
                  homeCatIcon: '././lib/images/Frame 427319336.svg',
                  isDocument: false,
                ),
                HomeCat(
                  homeCatTitle: 'Accommodation & Booking',
                  homeCatIcon: '././lib/images/building-office-2.svg',
                  isDocument: false,
                ),
                HomeCat(
                  homeCatTitle: 'Activities & Things To Do',
                  homeCatIcon: '././lib/images/Frame 427319338.svg',
                  isDocument: true,
                ),
                HomeCat(
                  homeCatTitle: 'Food & Dinning',
                  homeCatIcon: '././lib/images/Frame 427319339.svg',
                  isDocument: false,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeCat(
                  homeCatTitle: 'Shopping',
                  homeCatIcon: '././lib/images/shopping-bag.svg',
                  isDocument: false,
                ),
                HomeCat(
                  homeCatTitle: 'Health & Wellness',
                  homeCatIcon: '././lib/images/Frame 427319341.svg',
                  isDocument: false,
                ),
                HomeCat(
                  homeCatTitle: 'Government Services',
                  homeCatIcon: '././lib/images/briefcase.svg',
                  isDocument: true,
                ),
                HomeCat(
                  homeCatTitle: 'Local  Culture',
                  homeCatIcon: '././lib/images/Frame 427319343.svg',
                  isDocument: true,
                ),
                HomeCat(
                  homeCatTitle: 'More',
                  homeCatIcon: '././lib/images/Layer 2.svg',
                  isDocument: true,
                ),
              ],
            ),
            const SizedBox(height: 22),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Nearby',
                  style: TextStyle(
                    color: Color(0xFF007DD1),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Color(0xFF007DD1),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 277,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const PopularCard(),
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended',
                  style: TextStyle(
                    color: Color(0xFF007DD1),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Color(0xFF007DD1),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => const RecommendedCard(),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 205,
                  child: Text(
                    'Choose the location you want',
                    style: TextStyle(
                      color: Color(0xFF007DD1),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Color(0xFF007DD1),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 236,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    (context, index) => Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 175,
                      height: 236,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: [
                            Image.network(
                              'https://media.istockphoto.com/id/1464764464/photo/mountain-gorilla-in-the-rainforest.jpg?s=612x612&w=0&k=20&c=devkrynZUgedpJYxpfqrI3hOSJI_y5LIw0KHQgn7Qsc=',
                              fit: BoxFit.cover,
                            ),
                            BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 1),
                              child: const Center(
                                child: Text(
                                  'Musanze',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Articles',
                  style: TextStyle(
                    color: Color(0xFF007DD1),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Color(0xFF007DD1),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 400,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) => const ArticleCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
