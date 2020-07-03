import 'package:flutter/material.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:weather_icons/weather_icons.dart';

class FloatingMenu extends StatelessWidget {
  const FloatingMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnicornDialer(
      parentButtonBackground: Colors.blue[900],
      orientation: UnicornOrientation.HORIZONTAL,
      parentButton: Icon(Icons.menu),
      childButtons: _getProfileMenu(),
    );
  }
}

List<UnicornButton> _getProfileMenu() {
  List<UnicornButton> children = [];

  // Add Children here
  children.add(_profileOption(iconData: Icons.list, onPressed: () {}));
  children.add(_profileOption(iconData: Icons.play_arrow, onPressed: () {}));

  return children;
}

Widget _profileOption({IconData iconData, Function onPressed}) {
  return UnicornButton(
      currentButton: FloatingActionButton(
    backgroundColor: Colors.blue[700],
    mini: true,
    child: Icon(iconData),
    onPressed: onPressed(),
  ));
}
