import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_editor/canvasx.dart';
import 'package:image_editor/capture.dart';
import 'package:image_editor/image_model.dart';
import 'package:image_editor/image_picker.dart';
import 'package:image_editor/kits/master.dart';
import 'package:image_editor/save_kit.dart';

class Editor extends StatefulWidget {
  const Editor({super.key});

  @override
  State<Editor> createState() => _EditorState();
}

List<File> _selectedImages = [];
Map<int, double> xPosition = {};
Map<int, double> yPosition = {};
Map<int, double> scale = {};
Map<int, double> rotate = {};
Map<int, Size> imgSize = {};

int pickedImage = 0;
GlobalKey globalKey = GlobalKey();
capture() {
  Future<Uint8List> kit = Capture(key: globalKey).png();
  SaveKit(millisec: DateTime.now().millisecond, kit: kit).saveImg();
}

class _EditorState extends State<Editor> {
  reset() {
    double maxWidth = MediaQuery.of(context).size.width;
    xPosition.update(pickedImage, (val) => maxWidth,
        ifAbsent: () => maxWidth);
    yPosition.update(pickedImage, (val) => maxWidth * .5,
        ifAbsent: () => maxWidth * .5);
    scale.update(pickedImage, (val) => 0.5, ifAbsent: () => 0.5);
    rotate.update(pickedImage, (val) => 0.0, ifAbsent: () => 0.0);
  }

  bool done = false;
  initPositions() {
    if (!done) {
      reset();
    }
    done = true;
  }

  @override
  Widget build(BuildContext context) {
    initPositions();
    double maxWidth = MediaQuery.of(context).size.width;

    addImageToList() async {
      PickImg pickImg = PickImg();
      File file = await pickImg.fromGallery(maxWidth);
      Size s = await pickImg.imageDimension(file);
      setState(() {
        _selectedImages.add(file);
        pickedImage = _selectedImages.length - 1;
        xPosition.update(pickedImage, (val) => maxWidth, ifAbsent: () => maxWidth);
        yPosition.update(pickedImage, (val) => maxWidth * .5,
            ifAbsent: () => maxWidth * .5);
        scale.update(pickedImage, (val) => 1, ifAbsent: () => 1);
        rotate.update(pickedImage, (val) => 0.0, ifAbsent: () => 0.0);
        imgSize.update(pickedImage, (val) => s, ifAbsent: () => s);
      });
    }

    List<Widget> btns() => [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  addImageToList();
                },
                child: const Text("add image"),
              ),
              ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  capture();
                },
                child: const Text("capture"),
              ),
              ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  setState(() {
                    reset();
                  });
                },
                child: const Text("reset"),
              ),
            ],
          ),
          Column(
            children: [
              Slider(
                // x position
                max: maxWidth * 1.8,
                value: xPosition[pickedImage]!,
                onChanged: (value) {
                  setState(() {
                    maxWidth = value;
                    xPosition.update(pickedImage, (val) => maxWidth,
                        ifAbsent: () => maxWidth);
                  });
                },
              ),
              Slider(
                // y position
                thumbColor: Colors.amber,
                max: maxWidth * 1.3,
                value: yPosition[pickedImage] ?? 0.0,
                onChanged: (value) {
                  setState(() {
                    yPosition.update(pickedImage, (val) => value,
                        ifAbsent: () => value);
                  });
                },
              ),
              Slider(
                // scale
                thumbColor: Colors.red,
                min: .1,
                max: 1.0,
                value: scale[pickedImage] ?? 1.0,
                onChanged: (value) {
                  setState(() {
                    scale.update(pickedImage, (val) => value,
                        ifAbsent: () => value);
                  });
                },
              ),
              Slider(
                // rotate
                thumbColor: Colors.green,
                min: 0.0,
                max: 360.0,
                value: rotate[pickedImage] ?? 1.0,
                onChanged: (value) {
                  setState(() {
                    rotate.update(pickedImage, (val) => value,
                        ifAbsent: () => value);
                  });
                },
              ),
            ],
          )
        ];

    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1 / 1,
          child: Stack(
            children: [
              RepaintBoundary(
                key: globalKey,
                child: Stack(
                  children: [
                    const CanvasX(),
                    ClipPath(
                      clipper: Master(pants: false),
                      child: ImageModel(
                        size: imgSize,
                        scale: scale,
                        rotate: rotate,
                        pickedIndex: pickedImage,
                        width: maxWidth,
                        leftPosition: xPosition,
                        topPosition: yPosition,
                        getIndex: (index) {
                          setState(() {
                            pickedImage = index;
                          });
                        },
                        children: _selectedImages,
                      ),
                    ),
                  ],
                ),
              ),
              ImageModel(
                size: imgSize,
                scale: scale,
                rotate: rotate,
                pickedIndex: pickedImage,
                width: maxWidth,
                activeStroke: true,
                leftPosition: xPosition,
                topPosition: yPosition,
                getIndex: (index) {
                  setState(() {
                    pickedImage = index;
                  });
                },
                children: _selectedImages,
              ),
            ],
          ),
        ),
        Row(
          children: btns(),
        ),
      ],
    );
  }
}
