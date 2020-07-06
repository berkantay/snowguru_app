import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';

class FloatingMenu extends StatelessWidget {
  const FloatingMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FabCircularMenu(
      ringColor: Color(0xAA000056),
      fabCloseColor: Color(0xBFEB565B),
      fabOpenColor: Color(0xAA000056),
      fabCloseIcon: Icon(
        Icons.close,
        color: Colors.white,
      ),
      fabMargin: EdgeInsets.all(20.0),
      fabElevation: 10.0,
      animationDuration: Duration(seconds: 1),
      ringDiameter: 400.0,
      children: <Widget>[
        IconButton(
            icon: Icon(Icons.ac_unit),
            color: Colors.white,
            onPressed: () {
              print("first icon");
            }),
        IconButton(
            icon: Icon(Icons.ac_unit),
            color: Colors.white,
            onPressed: () {
              print("second icon");
            }),
        IconButton(
            icon: Icon(Icons.ac_unit),
            color: Colors.white,
            onPressed: () {
              print("third icon");
            })
      ],
    );
  }
}
