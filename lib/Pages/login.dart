import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/images/Logo.png',
              width: 170.0,
              height: 207.0,
              // fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Customtext(text: "Email Address"),
          Customtext(text: "Password"),
          Container(
            height: 50.0,
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Hexcolor('#EF5A53'), Hexcolor('#F48348')],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 296.0, minHeight: 56.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              "Forgot password?",
              style: TextStyle(fontSize: 14, color: Hexcolor('#393E41')),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              "Create an new account",
              style: TextStyle(fontSize: 16, color: Hexcolor('#393E41')),
            ),
          )
        ],
      ),
    );
  }
}

class Customtext extends StatelessWidget {
  final String text;

  const Customtext({this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(44, 0, 35, 13),
      child: Container(
        constraints: BoxConstraints(maxWidth: 296.0, minHeight: 56.0),
        child: TextField(
          decoration: new InputDecoration(
              border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(45.0),
                ),
              ),
              filled: true,
              hintStyle:
                  new TextStyle(color: Hexcolor('#393E41'), fontSize: 16),
              hintText: text,
              fillColor: Colors.white),
        ),
      ),
    );
  }
}
