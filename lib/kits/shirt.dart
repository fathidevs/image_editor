import 'package:flutter/material.dart';

class Shirt extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width*0.3725000,size.height*0.6450000);
    path.lineTo(size.width*0.3712500,size.height*0.8500000);
    path.lineTo(size.width*0.4350000,size.height*0.8459800);
    path.lineTo(size.width*0.4362500,size.height*0.7434800);
    path.lineTo(size.width*0.4975000,size.height*0.7454800);
    path.lineTo(size.width*0.4975000,size.height*0.8500000);
    path.lineTo(size.width*0.5625000,size.height*0.8459800);
    path.lineTo(size.width*0.5612500,size.height*0.6470000);
    path.lineTo(size.width*0.3725000,size.height*0.6450000);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}