import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nearme_fn/features/home/data/models/place_item_model.dart';

///
class BzModal {
  ///
  Future<dynamic> showBzModal(
    BuildContext context,
    PlaceItemModel placeItemModel,
  ) {
    return showDialog(
      context: context,
      builder:
          (context) => AlertDialog.adaptive(
            backgroundColor: Colors.white,
            title: SvgPicture.asset('././lib/images/check-badge.svg'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  placeItemModel.title,
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
                  placeItemModel.businessEmail,
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
                  placeItemModel.phoneNumber,
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
                  placeItemModel.workingHours,
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
  }
}
