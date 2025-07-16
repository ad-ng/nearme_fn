import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/features/saved/data/datasources/remote/saved_api_service.dart';
import 'package:nearme_fn/features/saved/presentation/pages/save_subcategory_page.dart';

///
class SavedCard extends StatelessWidget {
  ///
  const SavedCard({required this.savedName, required this.isDoc, super.key});

  ///
  final String savedName;

  ///
  final bool isDoc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          () => context.pushNamed(
            'savedSubcategoryPage',
            extra: SaveSubcategoryPage(categoryName: savedName, isDoc: isDoc),
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.41,
                height: MediaQuery.of(context).size.height * 0.15,
                child: SvgPicture.asset(
                  '././lib/images/Img.svg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.41,
                height: MediaQuery.of(context).size.height * 0.15,
                child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // width / height of each cell
                    childAspectRatio:
                        (MediaQuery.of(context).size.width * 0.41) /
                        2 /
                        ((MediaQuery.of(context).size.height * 0.15) / 2),
                  ),
                  children: List.generate(3, (_) {
                    return Image.network(
                      'https://town-n-country-living.com/wp-content/uploads/2023/06/craftsman-exterior.jpg',
                      fit: BoxFit.cover,
                    );
                  }),
                ),
              ),
              // FutureBuilder(
              //   future: SavedApiService().fetchingAllSavedItems(savedName),
              //   builder: (context, snapshot) {
              //     if (snapshot.hasData) {
              //       return SizedBox(
              //         width: MediaQuery.of(context).size.width * 0.41,
              //         height: MediaQuery.of(context).size.height * 0.15,
              //         child: GridView.builder(
              //           physics: const NeverScrollableScrollPhysics(),
              //           gridDelegate:
              //               const SliverGridDelegateWithFixedCrossAxisCount(
              //                 crossAxisCount: 2,
              //               ),
              //           itemBuilder:
              //               (context, index) =>
              //                   (snapshot.data!.isEmpty && index < 3)
              //                       ? Image.network(
              //                         isDoc
              //                             ? snapshot
              //                                 .data![index]
              //                                 .docItem!
              //                                 .featuredImg
              //                             : snapshot
              //                                 .data![index]
              //                                 .placeItem!
              //                                 .placeImg[0],
              //                         fit: BoxFit.cover,
              //                       )
              //                       : Container(),
              //         ),
              //       );
              //     }
              //     if (snapshot.hasError) {
              //       return Text(snapshot.error.toString());
              //     }
              //     return const SizedBox.shrink();
              //   },
              // ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            savedName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'SF Pro',
              fontWeight: FontWeight.w500,
              height: 1.33,
              letterSpacing: -0.40,
            ),
          ),
          FutureBuilder(
            initialData: 0,
            future: SavedApiService().totalSavedItem(savedName),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  '${snapshot.data} Businesses Saved',
                  style: const TextStyle(
                    color: Color(0x993C3C43),
                    fontSize: 12,
                    fontFamily: 'SF Pro',
                    fontWeight: FontWeight.w400,
                    height: 1.33,
                    letterSpacing: -0.40,
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
