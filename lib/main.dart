import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:temp_app/circuitSection.dart';
import 'package:temp_app/skiMapSection.dart';
import 'package:temp_app/weatherSection.dart';
import 'package:flutter/material.dart';
import 'package:temp_app/skiPage.dart';

void main() {
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

class CustomHomePage extends StatefulWidget {
  CustomHomePage({Key key}) : super(key: key);

  @override
  _CustomHomePageState createState() => _CustomHomePageState();
}

class _CustomHomePageState extends State<CustomHomePage> {
  int page = 0;

  Widget callPage(int index) {
    switch (index) {
      case 0:
        return FirstPage();
        break;
      case 1:
        return SkiPage();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MountainAppBar(),
      body: callPage(page),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        index: 0,
        color: Colors.black87,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.lightBlueAccent,
        items: <Widget>[
          Icon(
            Icons.verified_user,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.usb,
            size: 20,
            color: Colors.white,
          ),
        ],
        animationDuration: Duration(
          milliseconds: 300,
        ),
        animationCurve: Curves.easeOutCubic,
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
      ),
    );
  }
}

class MountainAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Colors.red,
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
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 5.0,
              ),
              child: FloatingActionButton(
                splashColor: Colors.redAccent,
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.warning,
                  size: 35.0,
                  color: Colors.white,
                ),
                onPressed: () {
                  _onAlertWithStylePressed(context);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

_onAlertWithStylePressed(context) {
  // Reusable alert style
  var alertStyle = AlertStyle(
    backgroundColor: Colors.blueAccent,
    animationType: AnimationType.fromTop,
    isCloseButton: false,
    isOverlayTapDismiss: false,
    descStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    animationDuration: Duration(milliseconds: 400),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(
        color: Colors.black87,
      ),
    ),
    titleStyle: TextStyle(
      color: Colors.white,
    ),
  );

  // Alert dialog using custom alert style
  Alert(
    context: context,
    style: alertStyle,
    type: AlertType.none,
    title: "ACIL DURUM\nNUMARALARI",
    desc: "AFAD:122\n",
    buttons: [
      DialogButton(
        child: Text(
          "ARA",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onPressed: () => print('call'),
        color: Colors.green,
        radius: BorderRadius.circular(10.0),
      ),
      DialogButton(
        child: Text(
          "KAPAT",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.redAccent,
        radius: BorderRadius.circular(10.0),
      ),
    ],
  ).show();
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                SkiMapSection(),
                WeatherSection(),
                CircuitSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
