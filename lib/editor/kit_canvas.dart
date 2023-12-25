import 'dart:math';
import 'package:flutter/material.dart';
import 'package:image_editor/editor/image_model.dart';
import 'package:image_editor/editor/image_container.dart';
import 'package:image_editor/editor/text_container.dart';
import 'package:image_editor/editor/text_model.dart';
import 'package:image_editor/kits/kits.dart';
import 'package:image_editor/kits/logos_placement.dart';
import 'package:image_editor/kits/logos_placements.dart';
import 'package:image_editor/kits/master.dart';
import 'package:image_editor/tools/debug_kit_part.dart';

class KitCanvas extends StatelessWidget {
  final List<ImageModel> imageModels;
  final Map<String, Color> kitColors;
  final List<TextModel> textModels;

  const KitCanvas({
    super.key,
    required this.imageModels,
    required this.kitColors,
    required this.textModels,
  });

  @override
  Widget build(BuildContext context) {
    List<Positioned> listOfImages = List.generate(imageModels.length, (i) {
      return Positioned(
        left: imageModels[i].positions!['x'],
        top: imageModels[i].positions!['y'],
        child: Transform.rotate(
          angle: ((imageModels[i].angle!['a'] ?? 0.0) / 180.0) * pi,
          child: ImageContainer(
            model: imageModels[i],
          ),
        ),
      );
    });
    List<Positioned> listOfText = List.generate(textModels.length, (i) {
      return Positioned(
        left: textModels[i].positions!['x']!,
        top: textModels[i].positions!['y'],
        child: TextContainer(model: textModels[i]),
      );
    });

    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Stack(children: [
        Kits(colors: kitColors),
        for (int i = 0; i < listOfImages.length; i++)
          ClipPath(
            clipper: Master(model: imageModels[i]),
            child: Stack(children: [listOfImages[i]]),
          ),
        for (int j = 0; j < listOfText.length; j++)
          ClipPath(
            // clipper: Master(model: imageModels[i]),
            child: Stack(children: [listOfText[j]]),
          ),
        LogosPlacement(),
        Opacity(
          opacity: .0,
          child: CustomPaint(
            size: Size(MediaQuery.sizeOf(context).width,
                MediaQuery.sizeOf(context).width),
            painter: LogoPlacements(),
          ),
        ),
        // Opacity(
        //   opacity: 1.0,
        //   child: CustomPaint(
        //     size: Size(MediaQuery.sizeOf(context).width,
        //         MediaQuery.sizeOf(context).width),
        //     painter: RPSCustomPainter(),
        //   ),
        // ),
      ]),
    );
  }
}
