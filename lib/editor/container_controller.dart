import 'dart:math';
import 'package:flutter/material.dart';
import 'package:image_editor/editor/image_model.dart';
import 'package:image_editor/editor/image_container.dart';

class ContainerController extends StatelessWidget {
  final List<ImageModel> models;
  final Function onPanUpdate;
  final Function onImagePicked;
  final int pickedImageIndex;

  const ContainerController({
    super.key,
    required this.models,
    required this.onPanUpdate(DragUpdateDetails details),
    required this.onImagePicked(int index),
    required this.pickedImageIndex,
  });

  @override
  Widget build(BuildContext context) {
    List<Positioned> listOfImages = List.generate(models.length, (i) {
      return Positioned(
        left: models[i].positions!['x']!,
        top: models[i].positions!['y']!,
        child: GestureDetector(
          onTap: () {
            onImagePicked(i);
          },
          child: Transform.rotate(
            angle: (models[i].angle!['a']! / 180) * pi,
            child: Container(
              decoration:
                  BoxDecoration(border: pickedBorder(i == pickedImageIndex)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.03,
                    child: ImageContainer(
                      model: models[i],
                    ),
                  ),
                  btns(i, onPanUpdate),
                ],
              ),
            ),
          ),
        ),
      );
    });
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: ClipRect(
        child: Stack(
          children: listOfImages,
        ),
      ),
    );
  }

  Widget btns(int i, Function function) {
    return GestureDetector(
      onTap: () {
        onImagePicked(i);
      },
      onTapDown: (_) {
        onImagePicked(i);
      },
      onTapCancel: () {
        onImagePicked(i);
      },
      onPanUpdate: (details) {
        if (i == pickedImageIndex) {
          function(details);
        }
      },
      child: Container(
        width: 30.0,
        height: 30.0,
        alignment: Alignment.center,
        decoration: pickedBtnDecoration(i == pickedImageIndex),
        child: pickedBtnIcon(i == pickedImageIndex),
      ),
    );
  }

  Border pickedBorder(bool picked) {
    if (picked) {
      return Border.all(
          color: Colors.green,
          strokeAlign: BorderSide.strokeAlignOutside,
          width: 2);
    }
    return Border.all(color: Colors.transparent, width: 0.0);
  }

  BoxDecoration pickedBtnDecoration(bool picked) {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(100)),
      color: picked ? Colors.green : Colors.green.withOpacity(.1),
    );
  }

  Icon pickedBtnIcon(bool picked) {
    return Icon(
      Icons.open_with_rounded,
      color: picked ? Colors.white : Colors.white
        ..withOpacity(.1),
    );
  }
}
