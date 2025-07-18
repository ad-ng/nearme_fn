import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

///
class HomeCat extends StatelessWidget {
  ///
  HomeCat({
    required this.homeCatTitle,
    required this.homeCatIcon,
    required this.isDocument,
    super.key,
  });

  ///
  final String homeCatTitle;

  ///
  final String homeCatIcon;

  ///
  final bool isDocument;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          () =>
              homeCatTitle == 'More'
                  ? context.pushNamed('allCategoriesPage')
                  : isDocument
                  ? context.pushNamed('articlesList', extra: homeCatTitle)
                  : context.pushNamed('subCategoryPage', extra: homeCatTitle),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.175,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF737373)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(homeCatIcon),
            ),
            Text(
              homeCatTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF737373),
                fontSize: 10,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
