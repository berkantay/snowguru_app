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
      appBar: _getCustomAppBar(),
      body: Center(
        child: Text('hello'),
      ),
    );
  }
}

_getCustomBody() {
  Center(
    child: Text('hello'),
  );
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
                new BoxShadow(color: Colors.black87, blurRadius: 10.0)
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
                    color: Color(0xFF030513).withOpacity(0.4), blurRadius: 20.0)
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
