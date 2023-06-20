import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'access_token.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final LatLng center = const LatLng(28.5355, 77.3910);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 32, 32),
        title: const Text('Flutter MapBox'),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              minZoom: 5,
              maxZoom: 18,
              zoom: 13,
              center: center,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    "https://api.mapbox.com/styles/v1/fatehsingh786/clivme5pl00yg01qvha2md5qx/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZmF0ZWhzaW5naDc4NiIsImEiOiJjbGl2a3hkYTIwMnNnM2V1bW54bnYzZjNvIn0.76aQU9Zd93ZxSUcZrD7csA",
                additionalOptions: const {
                  'mapStyleId': mapBoxStyleId,
                  'accessToken': mapboxAccessToken,
                },
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: const LatLng(28.5355, 77.3910),
                    builder: (context) => const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
