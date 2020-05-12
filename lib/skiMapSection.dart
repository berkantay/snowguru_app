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
          center: LatLng(40.58, 31.78),
          minZoom: 10.0,
        ),
        layers: [
          new TileLayerOptions(
              urlTemplate:
                  "https://snowmap.fast-sfc.com/pistes/{z}/{x}/{y}.png", //change base_snow_map to pistes
              subdomains: ['a', 'b', 'c'])
        ],
      ),
    );
  }
}

//http://tiles.opensnowmap.org/base_snow_map_high_dpi/{z}/{x}/{y}.png get access denied
