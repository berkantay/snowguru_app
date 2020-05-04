import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
    var screen_size = MediaQuery.of(context).size;
    var screen_height = screen_size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: SnowHome(),
      appBar: _getCustomAppBar(),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        index: 2,
        color: Color(0xFF030513),
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.lightBlueAccent,
        items: <Widget>[
          Icon(Icons.verified_user, size: 20, color: Colors.white),
          Icon(Icons.usb, size: 20, color: Colors.white),
          Icon(Icons.speaker_notes, size: 20, color: Colors.white),
          Icon(Icons.menu, size: 20, color: Colors.white),
          Icon(Icons.add, size: 20, color: Colors.white),
        ],
        animationDuration: Duration(
          milliseconds: 300,
        ),
        animationCurve: Curves.elasticOut,
      ),
    );
  }
}

_getCustomAppBar() {
  return PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('img/top_banner.jpg'),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                new BoxShadow(color: Color(0xFF030513), blurRadius: 3.0)
              ],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            //color: const Color(0xFF030513).withOpacity(0.3),
            decoration: BoxDecoration(
              boxShadow: [
                new BoxShadow(
                  color: Color(0xFF030513).withOpacity(0.4),
                  blurRadius: 20.0,
                )
              ],
            ),
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

class SnowHome extends StatelessWidget {
  const SnowHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 3,
          color: Colors.blue,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 3,
          color: Colors.yellow,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 3 - 50,
          color: Colors.green,
        ),
      ],
    );
  }
}
