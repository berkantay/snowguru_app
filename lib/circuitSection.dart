import 'package:flutter/material.dart';

class CircuitSection extends StatelessWidget {
  const CircuitSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.transparent,
        child: Center(
          child:
              Text('Snowdata listview such as snow depth, vision, chill etc.'),
        ),
      ),
    );
  }
}
