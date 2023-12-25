import 'package:flutter/material.dart';
import 'package:image_editor/dlsk_consts.dart';
import 'package:image_editor/editor/image_model.dart';
import 'package:image_editor/kits/parts/left_short.dart';
import 'package:image_editor/kits/parts/right_short_sleeve.dart';
import 'package:image_editor/kits/parts/right_sock.dart';

import 'full_shirt.dart';
import 'parts/left_short_sleeve.dart';
import 'parts/left_under_sleeve.dart';
import 'parts/right_under_sleeve.dart';

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

    if (model.clippedTo![Kc.kfs]!) {
      p.addPath(FullShirt().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kc.krs]!) {
      p.addPath(RightSock().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kc.klsh]!) {
      p.addPath(LeftShort().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kc.krsh]!) {
      p.addPath(RightSock().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kc.krss]!) {
      p.addPath(RightShortSleeve().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kc.krss]!) {
      p.addPath(LeftShortSleeve().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kc.krus]!) {
      p.addPath(RightUnderSleeve().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kc.klus]!) {
      p.addPath(LeftUnderSleeve().getClip(size), Offset.zero);
    }
    if (model.clippedTo![Kc.klus]!) {
      p.addPath(LeftUnderSleeve().getClip(size), Offset.zero);
    }

    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

  static Map<String, bool> allClips() {
    return {
      Kc.kfs: true,
      Kc.krs: true,
      Kc.kls: true,
      Kc.krsh: true,
      Kc.klsh: true,
      Kc.krss: true,
      Kc.klss: true,
      Kc.krus: true,
      Kc.klus: true,
    };
  }
}
