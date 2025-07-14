import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

///
class SavedCard extends StatelessWidget {
  ///
  const SavedCard({required this.savedName, super.key});

  ///
  final String savedName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          const Text(
            '5 Businesses Saved',
            style: TextStyle(
              color: Color(0x993C3C43),
              fontSize: 12,
              fontFamily: 'SF Pro',
              fontWeight: FontWeight.w400,
              height: 1.33,
              letterSpacing: -0.40,
            ),
          ),
        ],
      ),
    );
  }
}
