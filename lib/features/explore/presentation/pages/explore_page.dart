import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nearme_fn/features/home/presentation/components/home_cat.dart';

///
class ExplorePage extends StatefulWidget {
  ///
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 242,
                  child: Text(
                    'Hi Ngoga, What are you searching for?',
                    style: TextStyle(
                      color: Color(0xFF007DD1),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                const SizedBox(
                  width: 250,
                  child: Text(
                    'Are you searching among these categories?',
                    style: TextStyle(
                      color: Color(0xFF007DD1),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeCat(
                      homeCatTitle: 'Travel Info',
                      homeCatIcon: '././lib/images/Frame 427319335.svg',
                      isDocument: true,
                    ),
                    HomeCat(
                      homeCatTitle: 'Transport Service',
                      homeCatIcon: '././lib/images/Frame 427319336.svg',
                      isDocument: false,
                    ),
                    HomeCat(
                      homeCatTitle: 'Accomodation & booking',
                      homeCatIcon: '././lib/images/building-office-2.svg',
                      isDocument: false,
                    ),
                  ],
                ),
                const SizedBox(height: 19),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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
                    HomeCat(
                      homeCatTitle: 'Shopping',
                      homeCatIcon: '././lib/images/shopping-bag.svg',
                      isDocument: false,
                    ),
                  ],
                ),
                const SizedBox(height: 19),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeCat(
                      homeCatTitle: 'Health & Wellness',
                      homeCatIcon: '././lib/images/Frame 427319341.svg',
                      isDocument: false,
                    ),
                    HomeCat(
                      homeCatTitle: 'Local \nCulture',
                      homeCatIcon: '././lib/images/Frame 427319343.svg',
                      isDocument: true,
                    ),
                    HomeCat(
                      homeCatTitle: 'Government Services',
                      homeCatIcon: '././lib/images/briefcase.svg',
                      isDocument: true,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: HomeCat(
                    homeCatTitle: 'More',
                    homeCatIcon: '././lib/images/Layer 2.svg',
                    isDocument: true,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 5,
            child: Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                color: Color(0xFF007DD1),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  '././lib/images/chat-bubble-left-right.svg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
