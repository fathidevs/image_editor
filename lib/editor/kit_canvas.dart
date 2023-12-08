import 'dart:math';
import 'package:flutter/material.dart';
import 'package:image_editor/editor/image_model.dart';
import 'package:image_editor/editor/image_container.dart';
import 'package:image_editor/kits/kits.dart';
import 'package:image_editor/kits/master.dart';

class KitCanvas extends StatelessWidget {
  final List<ImageModel> models;

  // final Map<String, bool> selectKit;

  const KitCanvas({
    super.key,
    required this.models,
    // required this.selectKit,
  });

  @override
  Widget build(BuildContext context) {
    List<Positioned> listOfImages = List.generate(models.length, (i) {
      return Positioned(
        left: models[i].positions!['x'],
        top: models[i].positions!['y'],
        child: Transform.rotate(
          angle: ((models[i].angle!['a'] ?? 0.0) / 180.0) * pi,
          child: ImageContainer(
            model: models[i],
          ),
        ),
      );
    });

    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Stack(children: [
        const Kits(),
        for (int i = 0; i < listOfImages.length; i++)
          ClipPath(
            clipper: Master(model: models[i]),
            child: Stack(children: [listOfImages[i]]),
          ),
        // ClipPath(
        //     clipper: Master(models: models),
        //     child: Stack(children: listOfImages)),
      ]),
    );
  }
}
