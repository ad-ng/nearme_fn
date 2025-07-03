import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

///
class PopularCard extends StatelessWidget {
  ///
  const PopularCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 277,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFAEAEAE)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(
            width: 232,
            height: 195,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://www.roowanders.com/wp-content/uploads/2019/03/Semeru-02-1024x768.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Semeru Mountain',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: Color(0xFF007DD1),
                          size: 15,
                        ),
                        Text(
                          'Malang, East Java',
                          style: TextStyle(
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
                Row(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
