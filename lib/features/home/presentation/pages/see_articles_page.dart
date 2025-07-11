import 'package:flutter/material.dart';
import 'package:nearme_fn/features/home/data/datasources/remote/home_api_service.dart';
import 'package:nearme_fn/features/home/presentation/components/article_card.dart';

///
class SeeAllArticlesPage extends StatefulWidget {
  ///
  const SeeAllArticlesPage({super.key});

  @override
  State<SeeAllArticlesPage> createState() => _SeeAllArticlesPageState();
}

class _SeeAllArticlesPageState extends State<SeeAllArticlesPage> {
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
          'All Articles',
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
                future: HomeApiService().fetchAllArticles(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder:
                          (context, index) =>
                              ArticleCard(docItemModel: snapshot.data![index]),
                    );
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
