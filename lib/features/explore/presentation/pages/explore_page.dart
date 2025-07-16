import 'package:flutter/material.dart';
import 'package:nearme_fn/features/home/presentation/components/home_cat.dart';

///
class ExplorePage extends StatefulWidget {
  ///
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final TextEditingController _searchController = TextEditingController();
  String searchText = '';

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        searchText = _searchController.text.trim();
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Widget _buildSearchResults() {
    return Column(
      children: [
        const SizedBox(height: 30),
        Text(
          'Showing results for: "$searchText"',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 20),
        const Center(
          child: Text(
            '🔍 search results will appear here',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          ],
        ),
        const SizedBox(height: 19),
        Row(
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeCat(
              homeCatTitle: 'Health & Wellness',
              homeCatIcon: '././lib/images/Frame 427319341.svg',
              isDocument: false,
            ),
            HomeCat(
              homeCatTitle: 'Local Culture',
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
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
              controller: _searchController,
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
            // 👇 AnimatedSwitcher handles micro-interaction
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child:
                  searchText.isEmpty
                      ? _buildCategoryContent()
                      : _buildSearchResults(),
            ),
          ],
        ),
      ),
    );
  }
}
