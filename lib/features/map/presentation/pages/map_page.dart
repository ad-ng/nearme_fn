import 'package:flutter/material.dart';
import 'package:nearme_fn/features/map/domain/usecases/location_service.dart';

///
class MapPage extends StatefulWidget {
  ///
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () async {
            final position = await LocationService.getCurrentLocation();
            print('location: $position');
          },
          child: const Center(child: Text('get current location')),
        ),
      ],
    );
  }
}
