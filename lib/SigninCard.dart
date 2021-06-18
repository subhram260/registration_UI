import 'package:flutter/material.dart';
import 'package:registration_app/constraints.dart';
import 'package:registration_app/main.dart';

class SigninCard extends StatelessWidget {
  // const SigninCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 350,
      margin: EdgeInsets.only(top: 300, left: 20, right: 20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "LOGIN",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 45,
              ),
              field(
                text: "EMAIL",
                hint: "Email",
              ),
              SizedBox(
                height: 20,
              ),
              field(
                text: "PASSWORD",
                hint: "Password",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class field extends StatelessWidget {
  const field({
    Key key,
    this.text,
    this.hint,
  }) : super(key: key);

  final String text, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 500,
          child: Text(
            text,
            style: TextStyle(color: Kblue, fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(hintText: hint),
        )
      ],
    );
  }
}
