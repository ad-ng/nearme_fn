import 'package:flutter/material.dart';
import 'package:nearme_fn/features/saved/presentation/components/saved_card.dart';

///
class SavedPage extends StatefulWidget {
  ///
  const SavedPage({super.key});

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Saved ',
            style: TextStyle(
              color: const Color(0xFF007DD1),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (context, index) => const SavedCard(),
            ),
          ),
        ],
      ),
    );
  }
}
