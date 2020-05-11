import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:temp_app/circuitSection.dart';
import 'package:temp_app/skiMapSection.dart';
import 'package:temp_app/weatherSection.dart';
import 'package:flutter/material.dart';

void main() {
  // SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomHomePage(),
    );
  }
}

class CustomHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _getCustomAppBar(),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        index: 1,
        color: Colors.black87,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.lightBlueAccent,
        items: <Widget>[
          Icon(Icons.verified_user, size: 20, color: Colors.white),
          Icon(Icons.usb, size: 20, color: Colors.white),
        ],
        animationDuration: Duration(
          milliseconds: 300,
        ),
        animationCurve: Curves.easeOutCubic,
      ),
      body: Column(children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            children: <Widget>[
              WeatherSection(),
              SkiMapSection(),
              CircuitSection(),
            ],
          ),
        ),
      ]),
    );
  }
}

_getCustomAppBar() {
  return PreferredSize(
      preferredSize: Size.fromHeight(55),
      child: Stack(
        children: <Widget>[
          Container(
            // color: Colors.red,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('img/top_banner.jpg'),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                new BoxShadow(color: Color(0xFF030513), blurRadius: 3.0)
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            //color: const Color(0xFF030513).withOpacity(0.3),
          ),
          Container(
            alignment: Alignment.center,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "KARTALKAYA",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontFamily: 'DancingScript',
                    letterSpacing: 4,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ));
}
