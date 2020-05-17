import 'package:flutter/material.dart';

class SkiPage extends StatelessWidget {
  const SkiPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.center,
              height: 100.0,
              color: Colors.greenAccent,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            child: Container(
              alignment: Alignment.center,
              height: 100.0,
              color: Colors.blueAccent,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            child: Container(
              alignment: Alignment.center,
              height: 100.0,
              color: Colors.redAccent,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            child: Container(
              alignment: Alignment.center,
              height: 100.0,
              color: Colors.purpleAccent,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            child: Container(
              alignment: Alignment.center,
              height: 100.0,
              color: Colors.yellowAccent,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            child: Container(
              alignment: Alignment.center,
              height: 100.0,
              color: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}
