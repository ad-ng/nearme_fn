import 'package:flutter/material.dart';
import 'package:nearme_fn/features/home/presentation/pages/home_page.dart';
import 'package:nearme_fn/features/profile/presentation/pages/profile_page.dart';

///landing page for all pages
class LandingPage extends StatefulWidget {
  ///
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentPageIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const Center(child: Text('E X P L O R E')),
    const Center(child: Text('M A P')),
    const Center(child: Text('S A V E D')),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: pages[currentPageIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: currentPageIndex,
        selectedItemColor: const Color(0xFF007DD1),
        onTap: (value) {
          setState(() {
            currentPageIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.map_outlined), label: 'Map'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_rounded),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
