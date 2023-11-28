import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_editor/editor/kit_canvas.dart';
import 'package:image_editor/tools/image_picker.dart';

class DlsKitEditor extends StatefulWidget {
  const DlsKitEditor({super.key});

  @override
  State<DlsKitEditor> createState() => _DlsKitEditorState();
}

class _DlsKitEditorState extends State<DlsKitEditor> {
  List<File> images = [];
  List<Map<String, double?>> imageDimensions = [];
  List<Map<String, double?>> imageAngle = [];
  List<Map<String, double?>> imagesPosition = [];

  bool imagePickerIsNotActive = true;
  int pickedImageIndex = 0;

  Map<String, double> findSize(Size size, double w, bool shape) {
    // original dimensions
    double originalW = size.width;
    double originalH = size.height;

    Map<String, double> returnMap = {};
    if (shape) {
      double newWidth = originalW * w / originalH;
      returnMap['nw'] = newWidth;
      returnMap['nh'] = w;
    } else {
      double newHeight = originalH * w / originalW;
      returnMap['nw'] = w;
      returnMap['nh'] = newHeight;
    }

    return returnMap;
  }

  int shape(Size size) {
    if (size.height == size.width) {
      return 0; // square
    } else if (size.height > size.width) {
      return 1; //portrait
    } else {
      return 2; //landscape
    }
  }

  scaleImage(int index, int shape, double canvasWidth) {
    switch (shape) {
      case 0: // square
        imageDimensions[index]
            .update("w", (value) => null, ifAbsent: () => null);
        imageDimensions[index]
            .update("h", (value) => canvasWidth, ifAbsent: () => canvasWidth);
        break;

      case 1: //portrait
        imageDimensions[index]
            .update("w", (value) => null, ifAbsent: () => null);
        imageDimensions[index]
            .update("h", (value) => canvasWidth, ifAbsent: () => canvasWidth);
        break;
      case 2: // landscape
        imageDimensions[index]
            .update("w", (value) => canvasWidth, ifAbsent: () => canvasWidth);
        imageDimensions[index]
            .update("h", (value) => null, ifAbsent: () => null);
        break;
      default: // portrait or square
        imageDimensions[index]
            .update("w", (value) => null, ifAbsent: () => null);
        imageDimensions[index]
            .update("h", (value) => canvasWidth, ifAbsent: () => canvasWidth);
        break;
    }
    // imageWidth = canvasWidth;
  }

  centerImage(int index, double imageWidth, double imageHeight,
      double canvasWidth, int shape) {
    switch (shape) {
      case 0: // square

        imagesPosition[index].update('x', (value) => (imageWidth / 2),
            ifAbsent: () => (imageWidth / 2));
        imagesPosition[index].update('y', (value) => (imageHeight / 2),
            ifAbsent: () => (imageHeight / 2));
        break;
      case 1: // portrait
        imagesPosition[index].update(
            'x', (value) => (canvasWidth / 2) + (imageWidth / 2),
            ifAbsent: () => (canvasWidth / 2) + (imageWidth / 2));
        imagesPosition[index].update("y", (value) => (imageHeight / 2),
            ifAbsent: () => (imageHeight / 2));
        break;
      case 2:
        imagesPosition[index].update('x', (value) => (imageWidth / 2),
            ifAbsent: () => (imageWidth / 2));
        imagesPosition[index].update(
            "y", (value) => (canvasWidth / 2) + (imageHeight / 2),
            ifAbsent: () => (canvasWidth / 2) + (imageHeight / 2));
        break;
      default:
        imagesPosition[index].update('x', (value) => (imageWidth / 2),
            ifAbsent: () => (imageWidth / 2));
        imagesPosition[index].update('y', (value) => (imageHeight / 2),
            ifAbsent: () => (imageHeight / 2));
        break;
    }
  }

  pickImage() async {
    PickImg pickImg = PickImg();
    setState(() {
      imagePickerIsNotActive = false;
    });
    File? file = await pickImg.fromGallery();
    if (file != null) {
      Size size = await pickImg.imageDimension(file);
      int getShape = shape(size);
      setState(() {
        double w = MediaQuery.of(context).size.width * .5;
        Map<String, double> sizeFinder = findSize(size, w, getShape == 1);
        images.add(file);
        imageDimensions.add({});
        imagesPosition.add({});
        imageAngle.add({});
        int length = images.length;
        pickedImageIndex = length - 1;
        imageAngle[pickedImageIndex]
            .update('a', (value) => 0.0, ifAbsent: () => 0.0);
        scaleImage(pickedImageIndex, getShape, w);
        centerImage(pickedImageIndex, sizeFinder['nw']!, sizeFinder['nh']!, w,
            getShape);
      });
    }
    setState(() {
      imagePickerIsNotActive = true;
    });
  }

  @override
  void initState() {
    imageDimensions.add({'w': 0.0, 'h': 0.0});
    imagesPosition.add({});
    imageAngle.add({});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    Row kitController() {
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
              Row(
                children: [
                  Slider(
                    // x position
                    max: w * .95,
                    value: (imagesPosition[pickedImageIndex]['x'] ?? 0.0),
                    onChanged: (newValue) {
                      setState(() {
                        imagesPosition[pickedImageIndex].update(
                            'x', (value) => newValue,
                            ifAbsent: () => newValue);
                      });
                    },
                  ),
                  const Text("x"),
                ],
              ),
              Row(
                children: [
                  Slider(
                    // y position
                    max: w * .95,
                    value: (imagesPosition[pickedImageIndex]['y'] ?? 0.0),
                    onChanged: (newValue) {
                      setState(() {
                        imagesPosition[pickedImageIndex].update(
                            'y', (value) => newValue,
                            ifAbsent: () => newValue);
                      });
                    },
                  ),
                  const Text("y"),
                ],
              ),
              Row(
                children: [
                  Slider(
                    // scale
                    min: 50.0,
                    max: w,
                    value: (imageDimensions[pickedImageIndex]['w'] ??
                                imageDimensions[pickedImageIndex]['h'])! <=
                            0
                        ? 50.0
                        : (imageDimensions[pickedImageIndex]['w'] ??
                            imageDimensions[pickedImageIndex]['h'])!,
                    onChanged: (newValue) {
                      setState(() {
                        if (imageDimensions[pickedImageIndex]['w'] == null) {
                          imageDimensions[pickedImageIndex].update(
                              'h', (value) => newValue,
                              ifAbsent: () => newValue);
                        } else {
                          imageDimensions[pickedImageIndex].update(
                              'w', (value) => newValue,
                              ifAbsent: () => newValue);
                        }
                      });
                    },
                  ),
                  const Text("scale"),
                ],
              ),
              Row(
                children: [
                  Slider(
                    // rotate
                    min: 0.0,
                    max: 360.0,
                    value: imageAngle[pickedImageIndex]['a'] ?? 0.0,
                    onChanged: (newValue) {
                      setState(() {
                        imageAngle[pickedImageIndex].update(
                            'a', (value) => newValue,
                            ifAbsent: () => newValue);
                      });
                    },
                  ),
                  const Text("rotate"),
                ],
              ),
            ],
          ),
        ],
      );
    }

    return Column(
      children: [
        Stack(
          children: [
            KitCanvas(
              imageDimensions: imageDimensions,
              imagesPosition: imagesPosition,
              imageAngle: imageAngle,
              images: images,
              onImagePicked: (index) {
                setState(() {
                  pickedImageIndex = index;
                });
              },
              pickedImageIndex: pickedImageIndex,
            ),
          ],
        ),
        kitController(),
      ],
    );
  }
}
