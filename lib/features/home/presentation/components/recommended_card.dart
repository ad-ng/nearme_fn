import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/features/home/data/models/place_item_model.dart';

///
class RecommendedCard extends StatelessWidget {
  ///
  const RecommendedCard({required this.placeItemModel, super.key});

  ///
  final PlaceItemModel placeItemModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          () => context.pushNamed('actualBusinessPage', extra: placeItemModel),
      child: Container(
        height: 87,
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFAFAFAF)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 74,
                  height: 81,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.network(
                      placeItemModel.placeImg[0],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Text(
                          placeItemModel.title,
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFAFAFAF)),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Text(
                          'Travel',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.location_on_rounded,
                            color: Color(0xFF007DD1),
                            size: 15,
                          ),
                          Text(
                            placeItemModel.location,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 10),
              child: Row(
                children: [
                  SvgPicture.asset('././lib/images/Vector.svg'),
                  const Text(
                    '4.5',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
