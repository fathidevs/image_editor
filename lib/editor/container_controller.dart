import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';

class ContainerController extends StatelessWidget {
  final List<Map<String, double?>> imagesDimension;
  final List<Map<String, double?>> imagesPosition;
  final List<Map<String, double?>> imagesAngle;
  final List<File> images;
  final Function onPanUpdate;
  final Function onImagePicked;
  final int pickedImageIndex;

  const ContainerController({
    super.key,
    required this.imagesDimension,
    required this.imagesPosition,
    required this.imagesAngle,
    required this.images,
    required this.onPanUpdate(DragUpdateDetails details),
    required this.onImagePicked(int index),
    required this.pickedImageIndex,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> listOfImages = List.generate(images.length, (i) {
      return Positioned(
        left: imagesPosition[i]['x']!,
        top: imagesPosition[i]['y']!,
        child: GestureDetector(
          onTap: () {
            onImagePicked(i);
          },
          child: Transform.rotate(
            angle: (imagesAngle[i]['a']! / 180) * pi,
            child: Container(
              width: imagesDimension[i]['w'],
              height: imagesDimension[i]['h'],
              decoration:
                  BoxDecoration(border: pickedBorder(i == pickedImageIndex)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.05,
                    child: Image.file(
                      images[i],
                    ),
                  ),
                  Positioned(child: btn("m", i, onPanUpdate)),
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

  Widget btn(String n, int i, Function function) {
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
      // border: Border.all(color: picked ? Colors.transparent : Colors.green),
      color: picked ? Colors.green : Colors.transparent,
    );
  }

  Icon pickedBtnIcon(bool picked) {
    return Icon(
      Icons.open_with_rounded,
      color: picked ? Colors.white : Colors.transparent,
    );
  }
}
