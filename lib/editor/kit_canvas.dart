import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:image_editor/editor/images_container.dart';
import 'package:image_editor/kits/kits.dart';
import 'package:image_editor/kits/master.dart';

class KitCanvas extends StatefulWidget {
  final List<File> images;
  final List<Map<String, double?>> imageDimensions;
  final List<Map<String, double?>> imagesPosition;
  final List<Map<String, double?>> imageAngle;
  final Function onImagePicked;
  final int pickedImageIndex;

  const KitCanvas({
    super.key,
    required this.images,
    required this.imageDimensions,
    required this.imagesPosition,
    required this.onImagePicked,
    required this.pickedImageIndex,
    required this.imageAngle,
  });

  @override
  State<KitCanvas> createState() => _KitCanvasState();
}

class _KitCanvasState extends State<KitCanvas> {
  int pickedIndex = -1;
  @override
  Widget build(BuildContext context) {
    List<Positioned> images = List.generate(widget.images.length, (i) {
      return Positioned(
        left: widget.imagesPosition[i]['x'],
        top: widget.imagesPosition[i]['y'],
        child: GestureDetector(
          onTap: () {
            setState(() {
              pickedIndex = i;
              widget.onImagePicked(i);
            });
          },
          child: Transform.rotate(
            angle: (widget.imageAngle[i]['a']! / 180.0) * pi,
            child: ImagesContainer(
              dimensions: widget.imageDimensions[i],
              position: widget.imagesPosition[i],
              content: widget.images[i],
            ),
          ),
        ),
      );
    });
    List<Widget> indicator = List.generate(widget.images.length, (i) {
      return Positioned(
        left: widget.imagesPosition[i]['x'],
        top: widget.imagesPosition[i]['y'],
        child: GestureDetector(
          onTap: () {
            setState(() {
              pickedIndex = i;
              widget.onImagePicked(i);
            });
          },
          child: Transform.rotate(
            angle: (widget.imageAngle[i]['a']! / 180.0) * pi,
            child: Container(
              decoration: BoxDecoration(
                border: pickedBorder(widget.pickedImageIndex > pickedIndex
                    ? widget.pickedImageIndex == i
                    : pickedIndex == i),
              ),
              child: Opacity(
                opacity: 0.1,
                child: ImagesContainer(
                  dimensions: widget.imageDimensions[i],
                  position: widget.imagesPosition[i],
                  content: widget.images[i],
                ),
              ),
            ),
          ),
        ),
      );
    });

    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Stack(children: [
        const Kits(),
        ClipPath(clipper: Master(), child: Stack(children: images)),
        Stack(children: indicator),
      ]),
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
}
