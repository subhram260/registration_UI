import 'package:flutter/material.dart';
import 'package:registration_app/Img.dart';
import 'package:registration_app/constraints.dart';

import 'SigninCard.dart';
import 'main.dart';

class SignIn extends StatefulWidget {
  // const SignIn({ Key? key }) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                color: Kblue,
              ),
              Img(),
              SigninCard(),
              Padding(
                padding: const EdgeInsets.only(top: 610, left: 70),
                child: BtnW(
                  pass: () {},
                  text: "LOGIN",
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
