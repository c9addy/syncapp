import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncapp/Pages/login.dart';

class StartPage extends StatefulWidget {
  StartPage({Key key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Center(
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: Container(
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                        // context, MaterialPageRoute(builder: (context) => MPage()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      color: Colors.white,
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Get Started",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Hexcolor('#393E41'), fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
