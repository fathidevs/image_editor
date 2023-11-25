import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:image_editor/kits/pants.dart';
import 'package:image_editor/kits/shirt.dart';

class Master extends CustomClipper<Path> {
  final bool shirt;
  final bool pants;

  Master({
    this.shirt = true,
    this.pants = true,
  });

  @override
  Path getClip(Size size) {
    Path p = Path();
    if (shirt) {
      p.addPath(Shirt().getClip(size), Offset.zero);
    }
    if (pants) {
      p.addPath(Pants().getClip(size), Offset.zero);
    }
      

    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
