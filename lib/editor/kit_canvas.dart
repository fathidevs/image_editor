import 'package:flutter/material.dart';
import 'package:image_editor/dlsk_consts.dart';
import 'package:image_editor/editor/added_images_widget.dart';
import 'package:image_editor/editor/added_text_widgets.dart';
import 'package:image_editor/editor/image_model.dart';
import 'package:image_editor/editor/text_model.dart';
import 'package:image_editor/kits/kits.dart';
import 'package:image_editor/kits/logo_images_widget.dart';
import 'package:image_editor/kits/promo_image.dart';
import 'package:image_editor/kits/master.dart';
import 'package:image_editor/kits/promo_image_model.dart';
import '../kits/logo_image_model.dart';
import '../kits/shirt_number_color.dart';
import '../kits/short_number_color.dart';

class KitCanvas extends StatelessWidget {
  final List<ImageModel> imageModels;
  final Map<String, LogoImageModel> logoModels;
  final PromoImageModel? promoImage;
  final List<TextModel> textModels;
  final Map<String, Color> kitColors;

  const KitCanvas({
    super.key,
    required this.imageModels,
    required this.logoModels,
    required this.promoImage,
    required this.textModels,
    required this.kitColors,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Stack(children: [
        Kits(colors: kitColors),
        for (int i = 0; i < imageModels.length; i++)
          ClipPath(
            // IMAGES
            clipper: Master(model: imageModels[i]),

            child: Stack(children: [
              AddedImageWidgets(models: imageModels).get(i),
            ]),
          ),
        for (int j = 0; j < textModels.length; j++)
          ClipPath(
            // TEXT
            // clipper: Master(model: imageModels[i]),
            child: Stack(children: [
              AddedTextWidgets(models: textModels).get(j),
            ]),
          ),
        PromoImage(model: promoImage).get(),
        for (int k = 0; k < logoModels.length; k++)
          LogoImagesList(cx: context, models: logoModels).get()[k],
        Positioned.fill(
          child: CustomPaint(
            painter: ShirtNumberColor(color: kitColors[Kc.ksnc]!),
            size: Size(MediaQuery.sizeOf(context).width,
                MediaQuery.sizeOf(context).width),
          ),
        ),
        Positioned.fill(
          child: CustomPaint(
            painter: ShortNumberColor(color: kitColors[Kc.ksonc]!),
            size: Size(MediaQuery.sizeOf(context).width,
                MediaQuery.sizeOf(context).width),
          ),
        ),
      ]),
    );
  }
}
