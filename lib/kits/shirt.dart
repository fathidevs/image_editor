import 'package:flutter/material.dart';

class Shirt extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.3112500, size.height * 0.3040000);
    path.lineTo(size.width * 0.3112500, size.height * 0.3980000);
    path.lineTo(size.width * 0.3737500, size.height * 0.4000000);
    path.lineTo(size.width * 0.3737500, size.height * 0.6020000);
    path.lineTo(size.width * 0.5637500, size.height * 0.6020000);
    path.lineTo(size.width * 0.5637500, size.height * 0.4000000);
    path.lineTo(size.width * 0.6225000, size.height * 0.4020000);
    path.lineTo(size.width * 0.6262500, size.height * 0.3000000);
    path.lineTo(size.width * 0.5000000, size.height * 0.3020000);
    path.lineTo(size.width * 0.4987500, size.height * 0.3600000);
    path.lineTo(size.width * 0.4362500, size.height * 0.3580000);
    path.lineTo(size.width * 0.4350000, size.height * 0.3000000);
    path.lineTo(size.width * 0.3112500, size.height * 0.3040000);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
