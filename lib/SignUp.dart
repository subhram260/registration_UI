import 'package:flutter/material.dart';
import 'package:registration_app/SignupCard.dart';

import 'Img.dart';
import 'SigninCard.dart';
import 'constraints.dart';
import 'main.dart';

class SignUp extends StatefulWidget {
  // const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              SignupCard(),
              Padding(
                padding: const EdgeInsets.only(top: 645, left: 70),
                child: BtnW(
                  pass: () {},
                  text: "SIGNUP",
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
