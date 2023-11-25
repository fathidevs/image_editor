import 'package:flutter/material.dart';

class Pants extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.8875000, size.height * 0.8440000);
    path.lineTo(size.width * 0.6012500, size.height * 0.9800000);
    path.lineTo(size.width * 0.5462500, size.height * 0.6560000);
    path.lineTo(size.width * 0.4850000, size.height * 0.6020000);
    path.lineTo(size.width * 0.3975000, size.height * 0.7020000);
    path.lineTo(size.width * 0.2987500, size.height * 0.6220000);
    path.lineTo(size.width * 0.3312500, size.height * 0.7360000);
    path.lineTo(size.width * 0.4425000, size.height * 0.7480000);
    path.lineTo(size.width * 0.4375000, size.height * 0.8440000);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

}