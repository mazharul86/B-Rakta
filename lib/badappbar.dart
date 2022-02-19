// @dart=2.9
import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';

import 'curveappbar.dart';

class BloodyShadow extends StatelessWidget {
  BloodyShadow({Key key, this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return ClipShadow(
      clipper: MyClipper(),
      boxShadow: const [
        BoxShadow(
            color: Color(0xff532013),
            blurRadius: 2,
            spreadRadius: 1,
            offset: Offset(1.0, 1.0)),
      ],
      child: Container(
        width: double.infinity,
        height: 220,
        decoration: const BoxDecoration(
          color: Color(0xffDF1010),
        ),
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .2),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
