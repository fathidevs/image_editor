import 'dart:ui' as ui;
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:image_editor/editor/image_model.dart';
import 'package:image_editor/editor/image_container.dart';
import 'package:image_editor/editor/text_container.dart';
import 'package:image_editor/editor/text_model.dart';
import 'package:image_editor/kits/kits.dart';
import 'package:image_editor/kits/logo_images_widget.dart';
import 'package:image_editor/kits/promo_image.dart';
import 'package:image_editor/kits/logos_placements.dart';
import 'package:image_editor/kits/master.dart';

class KitCanvas extends StatelessWidget {
  final List<ImageModel> imageModels;
  final Map<String, LogoImageModel> logoModels;
  final Map<String, Color> kitColors;
  final List<TextModel> textModels;
  final ui.Image? promoImage;

  const KitCanvas({
    super.key,
    required this.imageModels,
    required this.logoModels,
    required this.kitColors,
    required this.textModels,
    required this.promoImage,
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
            // IMAGES
            clipper: Master(model: imageModels[i]),
            child: Stack(children: [listOfImages[i]]),
          ),
        for (int j = 0; j < listOfText.length; j++)
          ClipPath(
            // TEXT
            // clipper: Master(model: imageModels[i]),
            child: Stack(children: [listOfText[j]]),
          ),
        PromoImage(
          image: promoImage,
        ),

        LogoImagesWidget(models: logoModels),
        Opacity(
          // DELETE ME
          opacity: .0,
          child: CustomPaint(
            size: Size(MediaQuery.sizeOf(context).width,
                MediaQuery.sizeOf(context).width),
            painter: LogoPlacements(),
          ),
        ),
        // Opacity( // DELETE ME
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
