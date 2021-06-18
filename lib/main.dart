import 'package:flutter/material.dart';
import 'package:registration_app/Img.dart';
import 'package:registration_app/SignIn.dart';
import 'package:registration_app/SignUp.dart';
import 'package:registration_app/constraints.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: (MediaQuery.of(context).size.height) / 2,
                color: Kblue,
              ),
              Img(),
            ],
          ),
          SizedBox(
            height: 120,
          ),
          BtnW(
            text: "LOGIN",
            pass: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SignIn()));
            },
          ),
          SizedBox(
            height: 30,
          ),
          BtnW(
            text: "CREATE ACCOUNT",
            pass: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SignUp()));
            },
          )
        ],
      ),
    );
  }
}

class BtnW extends StatelessWidget {
  const BtnW({
    Key key,
    this.text,
    this.pass,
  }) : super(key: key);

  final String text;
  final Function pass;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 252,
      child: RaisedButton(
          color: Kblue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(34)),
          child: Text(
            text,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          onPressed: pass),
    );
  }
}
