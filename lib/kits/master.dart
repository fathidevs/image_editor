import 'package:flutter/material.dart';
import 'package:image_editor/editor/image_model.dart';
import 'package:image_editor/kits/pants.dart';
import 'package:image_editor/kits/shirt.dart';

/*

  this class is used only to clip images to a shape if true


    *this file is step 4 in adding new kit: 
    a. add new bool param in constructor matching the kit name
    b. add new path in if() statement, and use the new bool param in the condition

*/

class Master extends CustomClipper<Path> {
  final Map<String, bool>? selectKit;
  final ImageModel model;

  Master({
    this.selectKit,
    required this.model,
  });

  @override
  Path getClip(Size size) {
    Path p = Path();

    if (model.clippedTo!['shirt']!) {
      p.addPath(Shirt().getClip(size), Offset.zero);
    }
    if (model.clippedTo!['pants']!) {
      p.addPath(Pants().getClip(size), Offset.zero);
    }

    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

  static Map<String, bool> allClips() {
    return {
      'shirt': true,
      'pants': true,
    };
  }
}
