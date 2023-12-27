import 'package:flutter/material.dart';

class Circle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.8427539, size.height * 0.9661523);
    path.cubicTo(
        size.width * 0.8488672,
        size.height * 0.9869531,
        size.width * 0.8568750,
        size.height * 0.9958789,
        size.width * 0.8734375,
        size.height);
    path.lineTo(size.width * 0.8980469, size.height);
    path.cubicTo(
        size.width * 0.9086133,
        size.height * 0.9979297,
        size.width * 0.9161914,
        size.height * 0.9919727,
        size.width * 0.9210938,
        size.height * 0.9824023);
    path.cubicTo(
        size.width * 0.9242773,
        size.height * 0.9761914,
        size.width * 0.9264258,
        size.height * 0.9696484,
        size.width * 0.9277148,
        size.height * 0.9627734);
    path.cubicTo(
        size.width * 0.9316211,
        size.height * 0.9416406,
        size.width * 0.9199609,
        size.height * 0.9246875,
        size.width * 0.8989844,
        size.height * 0.9200586);
    path.cubicTo(
        size.width * 0.8856641,
        size.height * 0.9171094,
        size.width * 0.8736328,
        size.height * 0.9190234,
        size.width * 0.8608398,
        size.height * 0.9245703);
    path.lineTo(size.width * 0.8427539, size.height * 0.9661523);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
