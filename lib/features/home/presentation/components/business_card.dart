import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/features/home/data/models/place_item_model.dart';

///
class BusinessCard extends StatefulWidget {
  ///
  const BusinessCard({required this.placeItemModel, super.key});

  ///
  final PlaceItemModel placeItemModel;

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  late bool isSaved;

  @override
  void initState() {
    super.initState();
    isSaved = widget.placeItemModel.savedItems.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFAFAFAF)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.access_time_outlined, color: Colors.black),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Working Hours',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          widget.placeItemModel.workingHours,
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
              IconButton(
                onPressed: () {
                  setState(() {
                    isSaved = !isSaved;
                  });
                },
                icon:
                    isSaved
                        ? const Icon(Icons.favorite, color: Color(0xFF007DD1))
                        : const Icon(
                          Icons.favorite_outline_outlined,
                          color: Colors.black,
                        ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xB2AFAFAF), width: 0.5),
            ),
          ),
          const SizedBox(height: 19),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 69,
                      height: 69,
                      child: Hero(
                        tag: widget.placeItemModel.id,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            widget.placeItemModel.placeImg[0],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.43,
                          height: 20,
                          child: Text(
                            widget.placeItemModel.title,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Color(0xFF007DD1),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 143,
                          child: Text(
                            widget.placeItemModel.description,
                            maxLines: 4,
                            style: const TextStyle(
                              color: Color(0xFF6C7278),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap:
                      () => context.pushNamed(
                        'actualBusinessPage',
                        extra: widget.placeItemModel,
                      ),
                  child: Container(
                    width: 85,
                    height: 29,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF007DD1)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        'View Business',
                        style: TextStyle(
                          color: Color(0xFF007DD1),
                          fontSize: 9,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
