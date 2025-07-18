import 'package:flutter/material.dart';
import 'package:nearme_fn/features/home/data/datasources/remote/home_api_service.dart';
import 'package:nearme_fn/features/home/presentation/components/article_card.dart';

///
class ArticlesList extends StatefulWidget {
  ///
  const ArticlesList({required this.title, super.key});

  ///
  final String title;

  @override
  State<ArticlesList> createState() => _ArticlesListState();
}

class _ArticlesListState extends State<ArticlesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0xFF007DD1),
          ),
        ),
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
            Text(
              widget.title,
              style: const TextStyle(
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
              child: FutureBuilder(
                future: HomeApiService().fetchDocItems(widget.title),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return Image.asset('././lib/images/empty.png');
                    }
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
