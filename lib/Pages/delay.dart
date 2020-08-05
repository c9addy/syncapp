import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncapp/Pages/startpage.dart';

class Delay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DelayState();
}

class DelayState extends State<Delay> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(milliseconds: 1000);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => StartPage()));
    // context, MaterialPageRoute(builder: (context) => MPage()));
  }

  initScreen(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [Hexcolor('#EF5A53'), Hexcolor('#F48348')],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/sync-logo.png',
                    width: 89.0,
                    height: 88.0,
                    // fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'assets/images/Sync.png',
                    width: 169.0,
                    height: 73.0,
                    // fit: BoxFit.fill,
                  ),
                  Text("the meeting app",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
