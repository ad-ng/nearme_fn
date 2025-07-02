import 'package:flutter/material.dart';

///
class InterestCard extends StatefulWidget {
  ///
  const InterestCard({required this.interestName, super.key});

  ///
  final String interestName;

  @override
  State<InterestCard> createState() => _InterestCardState();
}

class _InterestCardState extends State<InterestCard> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color:
                isSelected ? const Color(0xFFB0D7F1) : const Color(0xFFEDF1F3),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: const EdgeInsets.only(right: 5, bottom: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.interestName,
              textAlign: TextAlign.center,
              style:
                  isSelected
                      ? const TextStyle(
                        color: Color(0xFF007DD1),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.60,
                      )
                      : const TextStyle(
                        color: Color(0xFF6C7278),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.60,
                      ),
            ),
            const SizedBox(width: 3),
            isSelected
                ? const Icon(Icons.cancel, color: Color(0xFF007DD1))
                : const Icon(Icons.add, color: Color(0xFF6C7278)),
          ],
        ),
      ),
    );
  }
}
