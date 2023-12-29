import 'package:flutter/material.dart';
import '../widgets/kits.dart';
import '../models/logo_image_model.dart';
import '../widgets/logo_images_widget.dart';
import '../kits/master.dart';
import '../widgets/promo_image.dart';
import '../models/promo_image_model.dart';
import '../kits/shirt_number_color.dart';
import '../kits/short_number_color.dart';
import '../tools/selected_kit_color.dart';
import '../widgets/added_images_widget.dart';
import '../widgets/added_text_widgets.dart';
import '../models/image_model.dart';
import '../models/text_model.dart';

class KitCanvas extends StatelessWidget {
  final List<ImageModel> imageModels;
  final Map<Enum, LogoImageModel> logoModels;
  final PromoImageModel? promoImage;
  final List<TextModel> textModels;
  final SelectedKitColor kitColors;

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
        Kits(color: kitColors),
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
            painter: ShirtNumberColor(color: kitColors.shirtNumberColor),
            size: Size(MediaQuery.sizeOf(context).width,
                MediaQuery.sizeOf(context).width),
          ),
        ),
        Positioned.fill(
          child: CustomPaint(
            painter: ShortNumberColor(color: kitColors.shortNumberColor),
            size: Size(MediaQuery.sizeOf(context).width,
                MediaQuery.sizeOf(context).width),
          ),
        ),
      ]),
    );
  }
}
