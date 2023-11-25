import 'package:flutter/material.dart';

class Shirt extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.3875000, size.height * 0.3440000);
    path.lineTo(size.width * 0.5412500, size.height * 0.4800000);
    path.lineTo(size.width * 0.4962500, size.height * 0.6060000);
    path.lineTo(size.width * 0.4350000, size.height * 0.5520000);
    path.lineTo(size.width * 0.3475000, size.height * 0.6520000);
    path.lineTo(size.width * 0.2487500, size.height * 0.5720000);
    path.lineTo(size.width * 0.2812500, size.height * 0.2360000);
    path.lineTo(size.width * 0.3925000, size.height * 0.2480000);
    path.lineTo(size.width * 0.3875000, size.height * 0.3440000);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}