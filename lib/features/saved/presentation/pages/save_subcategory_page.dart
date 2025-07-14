import 'package:flutter/material.dart';

///
class SaveSubcategoryPage extends StatefulWidget {
  ///
  const SaveSubcategoryPage({super.key});

  @override
  State<SaveSubcategoryPage> createState() => _SaveSubcategoryPageState();
}

class _SaveSubcategoryPageState extends State<SaveSubcategoryPage> {
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
          'Saved Items',
          style: TextStyle(
            color: Color(0xFF007DD1),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
