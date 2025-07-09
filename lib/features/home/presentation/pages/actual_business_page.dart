import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nearme_fn/features/home/data/models/place_item_model.dart';

///
class ActualBusinessPage extends StatefulWidget {
  ///
  const ActualBusinessPage({required this.placeItemModel, super.key});

  ///
  final PlaceItemModel placeItemModel;

  @override
  State<ActualBusinessPage> createState() => _ActualBusinessPageState();
}

class _ActualBusinessPageState extends State<ActualBusinessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 501,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(
                            widget.placeItemModel.placeImg[0],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 35,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: const Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              width: 44,
                              height: 44,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.placeItemModel.title,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.location_on_rounded,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      Text(
                                        widget.placeItemModel.location,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Stack(
                                alignment: Alignment(0, 0),
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 80,
                                    height: 80,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        'https://www.ktpress.rw/wp-content/uploads/2019/07/VW.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    '5+',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Description',
                    style: TextStyle(
                      color: Color(0xFF007DD1),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.placeItemModel.description,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Facilities',
                        style: TextStyle(
                          color: Color(0xFF007DD1),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(Icons.info_outline, color: Color(0xFFAFAFAF)),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment(1, 1),
                child: Container(
                  height: 78,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xB2595959),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 148,
                        height: 45.54,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE6F2FA),
                          borderRadius: BorderRadius.circular(9.52),
                        ),
                        child: const Center(
                          child: Text(
                            'View on Map',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF007DD1),
                              fontSize: 13.01,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder:
                                (context) => AlertDialog.adaptive(
                                  backgroundColor: Colors.white,
                                  title: SvgPicture.asset(
                                    '././lib/images/check-badge.svg',
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 30),
                                      const Text(
                                        'Business Name',
                                        style: TextStyle(
                                          color: Color(0xFF2E2E2E),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 1.43,
                                        ),
                                      ),
                                      Text(
                                        widget.placeItemModel.title,
                                        style: const TextStyle(
                                          color: Color(0xFF007DD1),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 1.43,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFFE1E1E1),
                                            width: 0.5,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 18),
                                      const Text(
                                        'Business Email',
                                        style: TextStyle(
                                          color: Color(0xFF2E2E2E),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 1.43,
                                        ),
                                      ),
                                      Text(
                                        widget.placeItemModel.businessEmail,
                                        style: const TextStyle(
                                          color: Color(0xFF007DD1),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 1.43,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFFE1E1E1),
                                            width: 0.5,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 18),
                                      const Text(
                                        'Business Phone Number',
                                        style: TextStyle(
                                          color: Color(0xFF2E2E2E),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 1.43,
                                        ),
                                      ),
                                      Text(
                                        widget.placeItemModel.phoneNumber,
                                        style: const TextStyle(
                                          color: Color(0xFF007DD1),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 1.43,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFFE1E1E1),
                                            width: 0.5,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 18),
                                      const Text(
                                        'Working Hours',
                                        style: TextStyle(
                                          color: Color(0xFF2E2E2E),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 1.43,
                                        ),
                                      ),
                                      Text(
                                        widget.placeItemModel.workingHours,
                                        style: const TextStyle(
                                          color: Color(0xFF007DD1),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 1.43,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFFE1E1E1),
                                            width: 0.5,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 18),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text(
                                        'Go back to Business Page',
                                        style: TextStyle(
                                          color: Color(0xFF007DD1),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 1.71,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          );
                        },
                        child: Container(
                          width: 148,
                          height: 45.54,
                          decoration: BoxDecoration(
                            color: const Color(0xFF007DD1),
                            borderRadius: BorderRadius.circular(9.52),
                          ),
                          child: const Center(
                            child: Text(
                              'View Address',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.01,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
