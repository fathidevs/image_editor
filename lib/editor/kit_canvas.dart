import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:image_editor/editor/images_container.dart';
import 'package:image_editor/kits/kits.dart';
import 'package:image_editor/kits/master.dart';

class KitCanvas extends StatelessWidget {
  final List<File> images;
  final List<Map<String, double?>> imagesDimension;
  final List<Map<String, double?>> imagesPosition;
  final List<Map<String, double?>> imagesAngle;

  const KitCanvas({
    super.key,
    required this.images,
    required this.imagesDimension,
    required this.imagesPosition,
    required this.imagesAngle,
  });

  @override
  Widget build(BuildContext context) {
    List<Positioned> listOfImages = List.generate(images.length, (i) {
      return Positioned(
        left: imagesPosition[i]['x'],
        top: imagesPosition[i]['y'],
        child: Transform.rotate(
          angle: (imagesAngle[i]['a']! / 180.0) * pi,
          child: ImagesContainer(
            dimensions: imagesDimension[i],
            position: imagesPosition[i],
            content: images[i],
          ),
        ),
      );
    });

    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Stack(children: [
        const Kits(),
        ClipPath(clipper: Master(), child: Stack(children: listOfImages)),
      ]),
    );
  }
}
