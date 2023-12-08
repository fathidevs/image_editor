import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_editor/editor/container_controller.dart';
import 'package:image_editor/editor/image_model.dart';
import 'package:image_editor/editor/kit_canvas.dart';
import 'package:image_editor/kits/master.dart';
import 'package:image_editor/tools/image_picker.dart';
import 'package:image_editor/tools/image_settings.dart';
import 'package:image_editor/tools/custom_stl_widgets.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart' as xml;

class DlsKitEditor extends StatefulWidget {
  const DlsKitEditor({super.key});

  @override
  State<DlsKitEditor> createState() => _DlsKitEditorState();
}

class _DlsKitEditorState extends State<DlsKitEditor> {
  ImageSettings? imageSettings;
  bool imagePickerIsNotActive = true;
  int pickedImageIndex = 0;
  Size imageSize = const Size(0.0, 0.0);

  List<ImageModel> models = [];
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    final maxPosition = w * .95;

    return Column(
      children: [
        Stack(
          children: [
            KitCanvas(
              models: models,
            ),
            ContainerController(
              models: models,
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
                  if (models[pickedImageIndex].getShape == 0) {
                    // width is null
                    dx -= (models[pickedImageIndex].dimensions!['h']! * .5);
                    dy -= (models[pickedImageIndex].dimensions!['h']! * .75);
                  } else if (models[pickedImageIndex].getShape == 1) {
                    // width is null
                    dx -= (models[pickedImageIndex].dimensions!['h']! * .5);
                    dy -= (models[pickedImageIndex].dimensions!['h']! * .75);
                  } else {
                    // width is NOT null

                    dx -= (models[pickedImageIndex].dimensions!['w']! * .5);
                    dy -= (models[pickedImageIndex].dimensions!['w']! * .75);
                  }
                  models[pickedImageIndex].positions!.update(
                      'x',
                      (value) => dx > 0.0
                          ? dx <= maxPosition
                              ? dx
                              : maxPosition
                          : 0.0);
                  models[pickedImageIndex].positions!.update(
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
          w,
        ),
      ],
    );
  }

  void scale(double newValue) {
    setState(() {
      switch (models[pickedImageIndex].getShape) {
        case 0: //square
          models[pickedImageIndex].dimensions!.update('w', (value) => newValue);
          models[pickedImageIndex].dimensions!.update('h', (value) => newValue);
          break;
        case 1: //portrait

          models[pickedImageIndex].dimensions!.update('h', (value) => newValue);
        case 2: // landscape
          models[pickedImageIndex].dimensions!.update('w', (value) => newValue);
      }
    });
  }

  Widget kitController(
    double maxPosition,
    double canvaseWidth,
  ) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (imagePickerIsNotActive) pickImage();
                    },
                    child: const Text(
                      "image from storage",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // square: https://science4fun.info/wp-content/uploads/2017/05/tree.jpg
                      // portrait: https://assets-global.website-files.com/623de0e9fe0f9c6ed17335ad/635ae55d007d1c25463d76e3_Swamp%20White%20Oak%20(1).jpeg
                      // landscape: https://www.adobe.com/content/dam/cc/us/en/creativecloud/illustration-adobe-illustration/how-to-draw-trees/draw-trees_fb-img_1200x800.jpg
                      // svg square: https://upload.wikimedia.org/wikipedia/commons/f/fa/Apple_logo_black.svg
                      // svg landscape: https://upload.wikimedia.org/wikipedia/commons/2/28/Supreme_Logo.svg

                      imageFromLink(
                          "https://upload.wikimedia.org/wikipedia/commons/2/28/Supreme_Logo.svg",
                          canvaseWidth);
                    },
                    child: const Text(
                      "image from link",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  CustomStlWidgets().slider(
                      active: models.isNotEmpty,
                      icon: Icons.swap_horiz_rounded,
                      max: maxPosition,
                      value: models.isNotEmpty
                          ? models[pickedImageIndex].positions!['x']!
                          : 0.0,
                      onChanged: (value) {
                        setState(() {
                          models[pickedImageIndex]
                              .positions!
                              .update('x', (val) => value);
                        });
                      }),
                  CustomStlWidgets().slider(
                      active: models.isNotEmpty,
                      icon: Icons.swap_vert_rounded,
                      max: maxPosition,
                      value: models.isNotEmpty
                          ? models[pickedImageIndex].positions!['y']!
                          : 0.0,
                      onChanged: (value) {
                        setState(() {
                          models[pickedImageIndex]
                              .positions!
                              .update('y', (val) => value);
                        });
                      }),
                  CustomStlWidgets().slider(
                      active: models.isNotEmpty,
                      icon: Icons.open_in_full_rounded,
                      min: 50.0,
                      max: canvaseWidth,
                      value: models.isNotEmpty
                          ? (models[pickedImageIndex].dimensions!['w'] ??
                                      models[pickedImageIndex]
                                          .dimensions!['h'])! <=
                                  50.0
                              ? 50.0
                              : (models[pickedImageIndex].dimensions!['w'] ??
                                  models[pickedImageIndex].dimensions!['h'])!
                          : 50.0,
                      onChanged: (v) {
                        scale(v);
                      }),
                  CustomStlWidgets().slider(
                      active: models.isNotEmpty,
                      icon: Icons.rotate_right_rounded,
                      max: 270.0,
                      value: models.isNotEmpty
                          ? models[pickedImageIndex].angle!['a']!
                          : 0.0,
                      onChanged: (value) {
                        setState(() {
                          models[pickedImageIndex]
                              .angle!
                              .update('a', (val) => value);
                        });
                      }),
                ],
              ),
            ),
          ],
        ),
        CustomStlWidgets().checkBox(
            'shirt',
            models.isNotEmpty
                ? models[pickedImageIndex].clippedTo!['shirt']!
                : false, (v) {
          if (models.isNotEmpty) {
            setState(() {
              models
                  .elementAt(pickedImageIndex)
                  .clippedTo!
                  .update("shirt", (value) => !value);
            });
          }
        }),
        CustomStlWidgets().checkBox(
            'pants',
            models.isNotEmpty
                ? models[pickedImageIndex].clippedTo!['pants']!
                : false, (v) {
          if (models.isNotEmpty) {
            setState(() {
              models
                  .elementAt(pickedImageIndex)
                  .clippedTo!
                  .update("pants", (value) => !value);
            });
          }
        }),
      ],
    );
  }

  pickImage() async {
    PickImg pickImg = PickImg();
    setState(() {
      imagePickerIsNotActive = false;
    });
    File? file = await pickImg.fromGallery();
    if (file != null) {
      Size sizee = await pickImg.imageDimension(file);

      setState(() {
        double w = MediaQuery.of(context).size.width * .5;

        ImageModel imageModel = ImageModel();
        imageModel.content = file;
        imageModel.size = sizee;
        imageModel.canvasWidth = w;
        imageModel.type = imageModel.getType(file.path);
        imageModel.dimensions = imageModel.scaleImage();
        imageModel.positions = imageModel.centerImage();
        imageModel.angle = {'a': 0.0};
        imageModel.getShape = imageModel.shape();
        imageModel.clippedTo = Master.allClips();

        models.add(imageModel);
        pickedImageIndex = models.length - 1;
      });
    }
    setState(() {
      imagePickerIsNotActive = true;
    });
  }

  Future<Size> imageFromLinkSize(link) async {
    try {
      NetworkAssetBundle netWorkAssetBundle =
          NetworkAssetBundle(Uri.parse(link));
      final ByteData data = await netWorkAssetBundle.load(link);
      final Uint8List bytes = data.buffer.asUint8List();

      final decodedImage = await decodeImageFromList(bytes);

      return Size(
          decodedImage.width.toDouble(), decodedImage.height.toDouble());
    } on SocketException catch (e) {
      snackBar("Error: ${e.message}");
      return const Size(-1, -1);
    }
  }

  svgPictureSize(String link) async {
    Size size = Size.zero;

    final response = await http.get(Uri.parse(link));
    final svgContent = response.body;
    if (response.statusCode == 200) {
      final document = xml.XmlDocument.parse(svgContent);
      final svgElement = document.rootElement;
      final width = svgElement.getAttribute('width').toString();
      final height = svgElement.getAttribute('height').toString();
      size = Size(double.parse(width), double.parse(height));
    } else {
      snackBar("Error: ${response.statusCode}");
    }

    return size;
  }

  imageFromLink(String link, double w) async {
    bool isSvg = ImageModel().isSvg(link);

    Size sizee =
        isSvg ? await svgPictureSize(link) : await imageFromLinkSize(link);

    setState(() {
      ImageModel imageModel = ImageModel();
      imageModel.isNetwork = true;
      imageModel.content = link;
      imageModel.size = sizee;
      imageModel.canvasWidth = w * .5;
      imageModel.type = imageModel.getType(link);
      imageModel.dimensions = imageModel.scaleImage();
      imageModel.positions = imageModel.centerImage();
      imageModel.angle = {'a': 0.0};
      imageModel.getShape = imageModel.shape();
      imageModel.clippedTo = Master.allClips();

      models.add(imageModel);
      pickedImageIndex = models.length - 1;
    });
  }

  snackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
