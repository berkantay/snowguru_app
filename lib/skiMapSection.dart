import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class SkiMapSection extends StatelessWidget {
  const SkiMapSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new FlutterMap(
        options: new MapOptions(
          minZoom: 10.0,
          center: LatLng(40.71, -74.00),
        ),
        layers: [
          new TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c'])
        ],
      ),
    );
  }
}

//http://tiles.opensnowmap.org/base_snow_map_high_dpi/{z}/{x}/{y}.png get access denied
