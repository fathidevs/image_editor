import 'package:flutter/material.dart';

import '../models/image_model.dart';
import '../models/logo_image_model.dart';
import '../models/promo_image_model.dart';
import '../models/text_model.dart';
import '../tools/selected_kit_color.dart';
import '../widgets/container_controller.dart';
import 'kit_canvas.dart';

class DlsKitEditor extends StatelessWidget {
  final List<ImageModel> imageModels;
  final SelectedKitColor kitColors;
  final List<TextModel> textModels;

  final Function onPanUpdateImageController;
  final Function onImagePicked;
  final int pickedImageIndex;
  final PromoImageModel? promoImage;

  final Map<Enum, LogoImageModel> logoModels;

  const DlsKitEditor({
    super.key,
    required this.imageModels,
    required this.kitColors,
    required this.textModels,
    required this.onPanUpdateImageController,
    required this.onImagePicked,
    required this.pickedImageIndex,
    required this.promoImage,
    required this.logoModels,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            KitCanvas(
              imageModels: imageModels,
              logoModels: logoModels,
              promoImage: promoImage,
              kitColors: kitColors,
              textModels: textModels,
            ),
            ContainerController(
              models: imageModels,
              onImagePicked: (index) => onImagePicked(index),
              pickedImageIndex: pickedImageIndex,
              onPanUpdate: (DragUpdateDetails details) =>
                  onPanUpdateImageController(details),
            ),
            ContainerController(
              isImg: false,
              models: textModels,
              onImagePicked: (index) => onImagePicked(index),
              pickedImageIndex: pickedImageIndex,
              onPanUpdate: (DragUpdateDetails details) =>
                  onPanUpdateImageController(details),
            ),
          ],
        ),
      ],
    );
  }
}
