import 'package:flutter/material.dart';
import 'package:nearme_fn/features/home/data/datasources/remote/home_api_service.dart';
import 'package:nearme_fn/features/home/presentation/components/subcategory_card.dart';

///
class SubCategoryPage extends StatefulWidget {
  ///
  const SubCategoryPage({required this.title, super.key});

  ///
  final String title;

  @override
  State<SubCategoryPage> createState() => _SubCategoryPageState();
}

class _SubCategoryPageState extends State<SubCategoryPage> {
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
          'Back',
          style: TextStyle(
            color: Color(0xFF007DD1),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
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
            const SizedBox(height: 20),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: 3,
            //     itemBuilder:
            //         (context, index) => SubcategoryCard(title: widget.title),
            //   ),
            // ),
            Expanded(
              child: FutureBuilder(
                future: HomeApiService().fetchSubCategory(widget.title),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return Image.asset('././lib/images/empty.png');
                    }
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder:
                          (context, index) => SubcategoryCard(
                            title: snapshot.data![index].name,
                            cardName: snapshot.data![index].name,
                            businessesCount:
                                snapshot.data![index].placeItemsCount,
                          ),
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
