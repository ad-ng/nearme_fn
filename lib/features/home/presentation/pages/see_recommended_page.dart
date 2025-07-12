import 'package:flutter/material.dart';
import 'package:nearme_fn/features/home/data/datasources/remote/home_api_service.dart';
import 'package:nearme_fn/features/home/presentation/components/recommended_card.dart';

///
class SeeAllRecommendedPage extends StatefulWidget {
  ///
  const SeeAllRecommendedPage({super.key});

  @override
  State<SeeAllRecommendedPage> createState() => _SeeAllRecommendedPageState();
}

class _SeeAllRecommendedPageState extends State<SeeAllRecommendedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0xFF007DD1),
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Recommendations',
          style: TextStyle(
            color: Color(0xFF007DD1),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
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
            const SizedBox(height: 20),
            Expanded(
              child: FutureBuilder(
                future: HomeApiService().fetchRecommendedPlaces(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder:
                          (context, index) => RecommendedCard(
                            placeItemModel: snapshot.data![index],
                          ),
                    );
                  }
                  if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
