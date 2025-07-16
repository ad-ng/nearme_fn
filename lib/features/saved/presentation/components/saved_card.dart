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
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              // width: 172,
              // height: 134,
              child: SvgPicture.asset(
                '././lib/images/Img.svg',
                fit: BoxFit.cover,
              ),
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
      ),
    );
  }
}
