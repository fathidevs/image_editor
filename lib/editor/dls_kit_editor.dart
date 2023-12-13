import 'package:flutter/material.dart';
import 'package:image_editor/editor/container_controller.dart';
import 'package:image_editor/editor/image_model.dart';
import 'package:image_editor/editor/kit_canvas.dart';
import 'package:image_editor/editor/text_model.dart';

class DlsKitEditor extends StatelessWidget {
  final List<ImageModel> imageModels;
  final Map<String, Color> kitColors;
  final List<TextModel> textModels;
  
  final Function onPanUpdateImageController;
  final Function onImagePicked;
  final int pickedImageIndex;

  const DlsKitEditor({
    super.key,
    required this.imageModels,
    required this.kitColors,
    required this.textModels,
    required this.onPanUpdateImageController,
    required this.onImagePicked,
    required this.pickedImageIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            KitCanvas(
              imageModels:imageModels,
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
