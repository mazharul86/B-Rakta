// @dart=2.9
import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';

class CurveContainer extends StatelessWidget {
  const CurveContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ClipShadow(
          clipper: MyClipper(),
          boxShadow: const [
            BoxShadow(
                color: Color(0xff532013),
                blurRadius: 1,
                spreadRadius: 1,
                offset: Offset(1.0, 1.0)),
          ],
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff532013)),
              color: const Color(0xffDF1010),
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 4, size.height - 3, size.width, size.height - 220);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
