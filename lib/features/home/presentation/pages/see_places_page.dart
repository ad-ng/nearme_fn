import 'dart:ui';

import 'package:flutter/material.dart';

///
class SeeAllPlacesPage extends StatefulWidget {
  ///
  const SeeAllPlacesPage({super.key});

  @override
  State<SeeAllPlacesPage> createState() => _SeeAllPlacesPageState();
}

class _SeeAllPlacesPageState extends State<SeeAllPlacesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0xFF007DD1),
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'All Places',
          style: TextStyle(
            color: Color(0xFF007DD1),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: [
                  Card(
                    color: Colors.white,
                    child: SizedBox(
                      child: Image.network(
                        'https://www.ugandabudgetsafaris.com/wp-content/uploads/2019/07/Webp.net-compress-image-18.jpg',
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.14,
                          child: Image.network(
                            'https://www.rentadriverrwanda.com/wp-content/uploads/2022/10/akagera-rwanda.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            'Akagera National Park',
                            style: TextStyle(
                              color: Color(0xFF007DD1),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Image.network(
                      'https://www.ugandabudgetsafaris.com/wp-content/uploads/2019/07/Webp.net-compress-image-18.jpg',
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Image.network(
                      'https://www.ugandabudgetsafaris.com/wp-content/uploads/2019/07/Webp.net-compress-image-18.jpg',
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
