import 'package:flutter/material.dart';
import 'package:registration_app/constraints.dart';

class Img extends StatelessWidget {
  // const Img({ Key? key }) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      margin: EdgeInsets.only(left: 120, top: 110),
      child: Card(
        elevation: 10,
        child: Icon(
          Icons.home_sharp,
          color: Kblue,
          size: 80,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
    );
  }
}
