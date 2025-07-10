import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///
class SubcategoryCard extends StatelessWidget {
  ///
  const SubcategoryCard({
    required this.title,
    required this.cardName,
    required this.businessesCount,
    required this.featuredImage,
    super.key,
  });

  ///
  final String title;

  ///
  final String cardName;

  ///
  final int businessesCount;

  ///
  final String featuredImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed('businessPage', extra: title),
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.all(2),
        height: 87,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFAFAFAF)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 74,
              height: 81,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  featuredImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardName,
                  style: const TextStyle(
                    color: Color(0xFF007DD1),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9F9F9),
                    border: Border.all(color: const Color(0xFFAFAFAF)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    '$businessesCount Businesses',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
