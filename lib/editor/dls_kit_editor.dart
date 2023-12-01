import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_editor/editor/container_controller.dart';
import 'package:image_editor/editor/kit_canvas.dart';
import 'package:image_editor/tools/image_picker.dart';
import 'package:image_editor/tools/image_settings.dart';
import 'package:image_editor/tools/slider_controller.dart';

class DlsKitEditor extends StatefulWidget {
  const DlsKitEditor({super.key});

  @override
  State<DlsKitEditor> createState() => _DlsKitEditorState();
}

class _DlsKitEditorState extends State<DlsKitEditor> {
  List<File> images = [];
  List<Map<String, double?>> imagesDimension = [];
  List<Map<String, double?>> imagesAngle = [];
  List<Map<String, double?>> imagesPosition = [];
  ImageSettings? imageSettings;
  bool imagePickerIsNotActive = true;
  int pickedImageIndex = 0;
  Size imageSize = const Size(0.0, 0.0);

  @override
  void initState() {
    imagesDimension.add({'w': 0.0, 'h': 0.0});
    imagesPosition.add({});
    imagesAngle.add({});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    final maxPosition = w * .95;
    double? imageWidth = imagesDimension[pickedImageIndex]['w'];
    double? imageHeight = imagesDimension[pickedImageIndex]['w'];
    double? imageAngle = imagesAngle[pickedImageIndex]['a'];
    double? yPos = imagesPosition[pickedImageIndex]['y'];
    double? xPos = imagesPosition[pickedImageIndex]['x'];

    int getShape = imageSettings?.shape(imageSize) ?? 0;

    return Column(
      children: [
        Stack(
          children: [
            KitCanvas(
              imagesDimension: imagesDimension,
              imagesPosition: imagesPosition,
              imagesAngle: imagesAngle,
              images: images,
            ),
            ContainerController(
              imagesDimension: imagesDimension,
              imagesPosition: imagesPosition,
              imagesAngle: imagesAngle,
              images: images,
              onImagePicked: (index) {
                setState(() {
                  pickedImageIndex = index;
                });
              },
              pickedImageIndex: pickedImageIndex,
              onPanUpdate: (details) {
                double dx = details.globalPosition.dx;
                double dy = details.globalPosition.dy;

                setState(() {
                  if (getShape == 0) {
                    // width is null
                    dx -= (imagesDimension[pickedImageIndex]['h']! * .5);
                    dy -= (imagesDimension[pickedImageIndex]['h']! * .75);
                  } else if (getShape == 1) {
                    // width is null
                    dx -= (imagesDimension[pickedImageIndex]['h']! * .5);
                    dy -= (imagesDimension[pickedImageIndex]['h']! * .75);
                  } else {
                    // width is NOT null
                    dx -= (imagesDimension[pickedImageIndex]['w']! * .5);
                    dy -= (imagesDimension[pickedImageIndex]['w']! * .75);
                  }
                  imagesPosition[pickedImageIndex].update(
                      'x',
                      (value) => dx > 0.0
                          ? dx <= maxPosition
                              ? dx
                              : maxPosition
                          : 0.0);
                  imagesPosition[pickedImageIndex].update(
                      'y',
                      (value) => dy > 0.0
                          ? dy <= maxPosition
                              ? dy
                              : maxPosition
                          : 0.0);
                });
              },
            ),
          ],
        ),
        kitController(
          maxPosition,
          xPos,
          yPos,
          w,
          imageWidth,
          imageHeight,
          imageAngle,
        ),
      ],
    );
  }

  void scale(double newValue) {
    if (imagesDimension[pickedImageIndex]['w'] == null) {
      imagesDimension[pickedImageIndex]
          .update('h', (value) => newValue, ifAbsent: () => newValue);
    } else {
      imagesDimension[pickedImageIndex]
          .update('w', (value) => newValue, ifAbsent: () => newValue);
    }
  }

  Row kitController(
    double maxPosition,
    double? xPos,
    double? yPos,
    double canvaseWidth,
    double? imageWidth,
    double? imageHeight,
    double? imageAngle,
  ) {
    return Row(
      children: [
        Column(
          children: [
            ElevatedButton(
              onPressed: () {
                if (imagePickerIsNotActive) pickImage();
              },
              child: const Text("add image"),
            ),
          ],
        ),
        Column(
          children: [
            CustomStlWidgets().slider(
              icon: Icons.swap_horiz_rounded,
                max: maxPosition,
                pickedImageIndex: pickedImageIndex,
                value: xPos ?? 0.0,
                onChanged: (value) {
                  setState(() {
                    imagesPosition[pickedImageIndex]
                        .update('x', (val) => value, ifAbsent: () => value);
                  });

                }),
            CustomStlWidgets().slider(
              icon: Icons.swap_vert_rounded,
                max: maxPosition,
                pickedImageIndex: pickedImageIndex,
                value: yPos ?? 0.0,
                onChanged: (value) {
                  setState(() {
                    imagesPosition[pickedImageIndex]
                        .update('y', (val) => value, ifAbsent: () => value);
                  });
                }),
            CustomStlWidgets().slider(
              icon: Icons.open_in_full_rounded,
                min: 50.0,
                max: canvaseWidth,
                pickedImageIndex: pickedImageIndex,
                value: (imageWidth ?? imageHeight)! <= 50.0
                    ? 50.0
                    : (imageWidth ?? imageHeight)!,
                onChanged: (value) {
                  setState(() {
                    scale(value);
                  });
                }),
            CustomStlWidgets().slider(
              icon: Icons.rotate_right_rounded,
                max: 360.0,
                pickedImageIndex: pickedImageIndex,
                value: imageAngle ?? 0.0,
                onChanged: (value) {
                  setState(() {
                    imagesAngle[pickedImageIndex]
                        .update('a', (val) => value, ifAbsent: () => value);
                  });
                }),
          ],
        ),
      ],
    );
  }

  pickImage() async {
    imageSettings = ImageSettings(
      imagesDimension: imagesDimension,
      imagesPosition: imagesPosition,
      imagesAngle: imagesAngle,
    );
    PickImg pickImg = PickImg();
    setState(() {
      imagePickerIsNotActive = false;
    });
    File? file = await pickImg.fromGallery();
    if (file != null) {
      Size size = await pickImg.imageDimension(file);
      int getShape = imageSettings!.shape(size);
      setState(() {
        imageSize = size;
        double w = MediaQuery.of(context).size.width * .5;
        Map<String, double> sizeFinder =
            imageSettings!.findSize(size, w, getShape == 1);
        images.add(file);
        imageSettings!.init();
        int length = images.length;
        pickedImageIndex = length - 1;
        imagesAngle[pickedImageIndex]
            .update('a', (value) => 0.0, ifAbsent: () => 0.0);
        imageSettings!.scaleImage(pickedImageIndex, getShape, w);
        imageSettings!.centerImage(pickedImageIndex, sizeFinder['nw']!,
            sizeFinder['nh']!, w, getShape);
      });
    }
    setState(() {
      imagePickerIsNotActive = true;
    });
  }
}
