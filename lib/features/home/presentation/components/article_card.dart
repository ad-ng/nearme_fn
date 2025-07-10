import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/features/home/data/models/doc_item_model.dart';

///
class ArticleCard extends StatelessWidget {
  ///
  const ArticleCard({required this.docItemModel, super.key});

  ///
  final DocItemModel docItemModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed('articlesPage', extra: docItemModel),
      child: Container(
        height: 117,
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFAFAFAF)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 220,
                  child: Text(
                    docItemModel.title,
                    style: const TextStyle(
                      color: Color(0xFF007DD1),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          'https://media.licdn.com/dms/image/v2/D4D03AQGsvWpE2W_dMw/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1723027703094?e=1756944000&v=beta&t=i2PnLd1iCTEmqOcfjgqvV93Kc0jJ7rP0H4Oe94mRiXc',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 7),
                    Text(
                      '${docItemModel.author.firstName!} ${docItemModel.author.lastName}',
                      style: const TextStyle(
                        color: Color(0xFF191919),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      docItemModel.createdAt.substring(0, 10),
                      style: const TextStyle(
                        color: Color(0xFF959595),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 110,
              height: 85,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  docItemModel.featuredImg,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
