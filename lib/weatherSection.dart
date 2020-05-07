import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Icon(
                            WeatherIcons.snow,
                            size: 50.0,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '-1\u00b0 Celcius',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          'Graphical data of weather wrt hour',
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
