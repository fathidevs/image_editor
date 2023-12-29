import 'package:flutter/material.dart';

import '../models/image_model.dart';
import '../tools/enums.dart';
import 'parts/circle.dart';
import 'parts/full_shirt.dart';
import 'parts/left_long_sleeve.dart';
import 'parts/left_short.dart';
import 'parts/left_short_sleeve.dart';
import 'parts/left_sock.dart';
import 'parts/left_under_sleeve.dart';
import 'parts/right_long_sleeve.dart';
import 'parts/right_short.dart';
import 'parts/right_short_sleeve.dart';
import 'parts/right_sock.dart';
import 'parts/right_under_sleeve.dart';
import 'parts/rings.dart';

/*

  this class is used only to clip images to a shape if true


    *this file is step 4 in adding new kit: 
    a. add new bool param in constructor matching the kit name
    b. add new path in if() statement, and use the new bool param in the condition

*/

class Master extends CustomClipper<Path> {
  final Map<Enum, bool>? selectKit;
  final ImageModel model;

  Master({
    this.selectKit,
    required this.model,
  });

  @override
  Path getClip(Size size) {
    Path p = Path();

    if (model.clippedTo![Kit.fullShirt]!) {
      p.addPath(FullShirt().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kit.rightSock]!) {
      p.addPath(RightSock().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kit.leftSock]!) {
      p.addPath(LeftSock().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kit.rightShort]!) {
      p.addPath(RightShort().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kit.leftShort]!) {
      p.addPath(LeftShort().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kit.rightShortSleeve]!) {
      p.addPath(RightShortSleeve().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kit.leftShortSleeve]!) {
      p.addPath(LeftShortSleeve().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kit.rightUnderSleeve]!) {
      p.addPath(RightUnderSleeve().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kit.leftUnderSleeve]!) {
      p.addPath(LeftUnderSleeve().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kit.rightLongSleeve]!) {
      p.addPath(RightLongSleeve().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kit.leftLongSleeve]!) {
      p.addPath(LeftLongSleeve().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kit.circle]!) {
      p.addPath(Circle().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kit.rings]!) {
      p.addPath(Rings().getClip(size), Offset.zero);
    }

    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

  static Map<Enum, bool> allClips() {
    return {
      Kit.fullShirt: true,
      Kit.rightSock: true,
      Kit.leftSock: true,
      Kit.rightShort: true,
      Kit.leftShort: true,
      Kit.rightShortSleeve: true,
      Kit.leftShortSleeve: true,
      Kit.rightUnderSleeve: true,
      Kit.leftUnderSleeve: true,
      Kit.rightLongSleeve: true,
      Kit.leftLongSleeve: true,
      Kit.circle: true,
      Kit.rings: true,
    };
  }
}
