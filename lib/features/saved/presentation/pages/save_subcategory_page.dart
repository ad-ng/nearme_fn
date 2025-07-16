import 'package:flutter/material.dart';
import 'package:nearme_fn/features/home/presentation/components/article_card.dart';
import 'package:nearme_fn/features/home/presentation/components/business_card.dart';
import 'package:nearme_fn/features/saved/data/datasources/remote/saved_api_service.dart';

///
class SaveSubcategoryPage extends StatefulWidget {
  ///
  const SaveSubcategoryPage({
    required this.isDoc,
    required this.categoryName,
    super.key,
  });

  ///
  final bool isDoc;

  ///
  final String categoryName;

  @override
  State<SaveSubcategoryPage> createState() => _SaveSubcategoryPageState();
}

class _SaveSubcategoryPageState extends State<SaveSubcategoryPage> {
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
          'Saved Items',
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
            Expanded(
              child:
                  widget.isDoc
                      ? FutureBuilder(
                        future: SavedApiService().fetchingAllSavedItems(
                          widget.categoryName,
                        ),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            if (snapshot.data!.isEmpty) {
                              return const Center(
                                child: Text(
                                  'No Saved Items Yet',
                                  style: TextStyle(
                                    color: Color(0xFF007DD1),
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            }
                            return ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder:
                                  (context, index) => ArticleCard(
                                    docItemModel:
                                        snapshot.data![index].docItem!,
                                  ),
                            );
                          }
                          if (snapshot.hasError) {
                            return Center(
                              child: Text(snapshot.error.toString()),
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      )
                      : FutureBuilder(
                        future: SavedApiService().fetchingAllSavedItems(
                          widget.categoryName,
                        ),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            if (snapshot.data!.isEmpty) {
                              return const Center(
                                child: Text(
                                  'No Saved Items Yet',
                                  style: TextStyle(
                                    color: Color(0xFF007DD1),
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            }
                            return ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder:
                                  (context, index) => BusinessCard(
                                    placeItemModel:
                                        snapshot.data![index].placeItem!,
                                  ),
                            );
                          }
                          if (snapshot.hasError) {
                            return Center(
                              child: Text(snapshot.error.toString()),
                            );
                          }
                          return const SizedBox();
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
