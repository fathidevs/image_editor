import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_editor/editor/dls_kit_editor.dart';
import 'package:image_editor/editor/image_model.dart';
import 'package:image_editor/editor/text_model.dart';
import 'package:image_editor/kits/master.dart';
import 'package:image_editor/tools/custom_stl_widgets.dart';
import 'package:image_editor/tools/image_from_link.dart';
import 'package:image_editor/tools/image_from_storage.dart';
import 'package:image_editor/tools/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart' as xml;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ImageModel> imageModels = [];
  List<TextModel> textModels = [];
  int pickedImageIndex = -1;
  int pickedTextIndex = -1;
  Map<String, Color> kitColors = {
    'shirt': Colors.grey,
    'pants': Colors.red,
  };

  @override
  Widget build(BuildContext context) {
    double canvasWidth = MediaQuery.of(context).size.width;
    final maxPosition = canvasWidth * .95;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DlsKitEditor(
                imageModels: imageModels,
                textModels: textModels,
                kitColors: kitColors,
                pickedImageIndex: pickedImageIndex,
                onPanUpdateImageController: (DragUpdateDetails details) =>
                    onPanUpdateImageController(details, maxPosition),
                onImagePicked: (index) {
                  setState(() {
                    pickedImageIndex = index;
                  });
                },
              ),
              Row(
                children: [
                  Flexible(child: addKitBtns(canvasWidth, context)),
                  Flexible(
                      flex: 2,
                      child: imageControllerWidgets(maxPosition, canvasWidth)),
                ],
              ),
              pickers(),
            ],
          ),
        ),
      ),
    );
  }

  Widget addKitBtns(double canvasWidth, BuildContext cx) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            // if (imagePickerIsNotActive) pickImage();
            pickImage();
          },
          child: const Text(
            "image from storage",
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // square: https://science4fun.info/wp-content/uploads/2017/05/tree.jpg
            // portrait: https://assets-global.website-files.com/623de0e9fe0f9c6ed17335ad/635ae55d007d1c25463d76e3_Swamp%20White%20Oak%20(1).jpeg
            // landscape: https://www.adobe.com/content/dam/cc/us/en/creativecloud/illustration-adobe-illustration/how-to-draw-trees/draw-trees_fb-img_1200x800.jpg
            // svg square: https://upload.wikimedia.org/wikipedia/commons/f/fa/Apple_logo_black.svg
            // svg landscape: https://upload.wikimedia.org/wikipedia/commons/2/28/Supreme_Logo.svg

            imageFromLink(
                "https://upload.wikimedia.org/wikipedia/commons/f/fa/Apple_logo_black.svg",
                canvasWidth);
          },
          child: const Text(
            "image from link",
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            changeImageColor();
          },
          child: const Text(
            "image color",
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            changeKitColor('pants');
          },
          child: const Text(
            "kit color",
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            addTextDialog(cx);
          },
          child: const Text(
            "add text",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget imageControllerWidgets(double maxPosition, double canvasWidth) {
    return Column(
      children: [
        CustomStlWidgets().slider(
            active: imageModels.isNotEmpty,
            icon: Icons.swap_horiz_rounded,
            max: maxPosition,
            value: imageModels.isNotEmpty
                ? imageModels[pickedImageIndex].positions!['x']!
                : 0.0,
            onChanged: (value) {
              setState(() {
                imageModels[pickedImageIndex]
                    .positions!
                    .update('x', (val) => value);
              });
            }),
        CustomStlWidgets().slider(
            active: imageModels.isNotEmpty,
            icon: Icons.swap_vert_rounded,
            max: maxPosition,
            value: imageModels.isNotEmpty
                ? imageModels[pickedImageIndex].positions!['y']!
                : 0.0,
            onChanged: (value) {
              setState(() {
                imageModels[pickedImageIndex]
                    .positions!
                    .update('y', (val) => value);
              });
            }),
        CustomStlWidgets().slider(
            active: imageModels.isNotEmpty,
            icon: Icons.open_in_full_rounded,
            min: 50.0,
            max: canvasWidth,
            value: imageModels.isNotEmpty
                ? (imageModels[pickedImageIndex].dimensions!['w'] ??
                            imageModels[pickedImageIndex].dimensions!['h'])! <=
                        50.0
                    ? 50.0
                    : (imageModels[pickedImageIndex].dimensions!['w'] ??
                        imageModels[pickedImageIndex].dimensions!['h'])!
                : 50.0,
            onChanged: (v) {
              scale(v);
            }),
        CustomStlWidgets().slider(
            active: imageModels.isNotEmpty,
            icon: Icons.rotate_right_rounded,
            max: 270.0,
            value: imageModels.isNotEmpty
                ? imageModels[pickedImageIndex].angle!['a']!
                : 0.0,
            onChanged: (value) {
              setState(() {
                imageModels[pickedImageIndex]
                    .angle!
                    .update('a', (val) => value);
              });
            }),
      ],
    );
  }

  Widget pickers() {
    return Column(
      children: [
        CustomStlWidgets().checkBox(
            'shirt',
            imageModels.isNotEmpty
                ? imageModels[pickedImageIndex].clippedTo!['shirt']!
                : false, (v) {
          if (imageModels.isNotEmpty) {
            setState(() {
              imageModels
                  .elementAt(pickedImageIndex)
                  .clippedTo!
                  .update("shirt", (value) => !value);
            });
          }
        }),
        CustomStlWidgets().checkBox(
            'pants',
            imageModels.isNotEmpty
                ? imageModels[pickedImageIndex].clippedTo!['pants']!
                : false, (v) {
          if (imageModels.isNotEmpty) {
            setState(() {
              imageModels
                  .elementAt(pickedImageIndex)
                  .clippedTo!
                  .update("pants", (value) => !value);
            });
          }
        }),
      ],
    );
  }

  snackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void scale(double newValue) {
    setState(() {
      switch (imageModels[pickedImageIndex].getShape) {
        case 0: //square
          imageModels[pickedImageIndex]
              .dimensions!
              .update('w', (value) => newValue);
          imageModels[pickedImageIndex]
              .dimensions!
              .update('h', (value) => newValue);
          break;
        case 1: //portrait

          imageModels[pickedImageIndex]
              .dimensions!
              .update('h', (value) => newValue);
        case 2: // landscape
          imageModels[pickedImageIndex]
              .dimensions!
              .update('w', (value) => newValue);
      }
    });
  }

  pickImage() async {
    // PickImg pickImg = PickImg();
    ImageFromStorage pickImg = ImageFromStorage();
    setState(() {
      // imagePickerIsNotActive = false;
    });
    Map<String, dynamic>? pickedFile = await pickImg.pick();

    if (pickedFile != null) {
      Size sizee = pickedFile['size'];

      setState(() {
        double w = MediaQuery.of(context).size.width * .5;

        ImageModel imageModel = ImageModel();
        imageModel.content = pickedFile['content'];
        imageModel.size = sizee;
        imageModel.canvasWidth = w;
        imageModel.type = pickedFile['exe'];
        imageModel.dimensions = imageModel.scaleImage();
        imageModel.positions = imageModel.centerImage();
        imageModel.angle = {'a': 0.0};
        imageModel.getShape = imageModel.shape();
        imageModel.clippedTo = Master.allClips();

        imageModels.add(imageModel);
        pickedImageIndex = imageModels.length - 1;
      });
    }
    // setState(() {
    //   imagePickerIsNotActive = true;
    // });
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
    ImageModel imageModel = await ImageFromLink.imageFromLink(link, w);
    setState(() {
      imageModels.add(imageModel);
      pickedImageIndex = imageModels.length - 1;
    });
  }

  onPanUpdateImageController(DragUpdateDetails details, double maxPosition) {
    double dx = details.globalPosition.dx;
    double dy = details.globalPosition.dy;

    imagePositionUpdater(dx, dy, maxPosition);
  }

  void imagePositionUpdater(double dx, double dy, double maxPosition) {
    setState(() {
      if (imageModels[pickedImageIndex].getShape == 0) {
        // width is null
        dx -= (imageModels[pickedImageIndex].dimensions!['h']! * .5);
        dy -= (imageModels[pickedImageIndex].dimensions!['h']! * .75);
      } else if (imageModels[pickedImageIndex].getShape == 1) {
        // width is null
        dx -= (imageModels[pickedImageIndex].dimensions!['h']! * .5);
        dy -= (imageModels[pickedImageIndex].dimensions!['h']! * .75);
      } else {
        // width is NOT null

        dx -= (imageModels[pickedImageIndex].dimensions!['w']! * .5);
        dy -= (imageModels[pickedImageIndex].dimensions!['w']! * .75);
      }
      imageModels[pickedImageIndex].positions!.update(
          'x',
          (value) => dx > 0.0
              ? dx <= maxPosition
                  ? dx
                  : maxPosition
              : 0.0);
      imageModels[pickedImageIndex].positions!.update(
          'y',
          (value) => dy > 0.0
              ? dy <= maxPosition
                  ? dy
                  : maxPosition
              : 0.0);
    });
  }

  changeImageColor() {
    setState(() {
      imageModels[pickedImageIndex].color = Colors.amber;
    });
  }

  changeKitColor(String key) {
    setState(() {
      kitColors.update(key, (value) => Colors.amber);
    });
  }

  addTextDialog(BuildContext cx) {
    TextEditingController controller = TextEditingController();
    showModalBottomSheet(
        useSafeArea: false,
        context: cx,
        builder: (_) {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            children: [
              const SizedBox(
                height: 50,
              ),
              TextField(
                decoration: const InputDecoration(hintText: "Type somthing..."),
                controller: controller,
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  addText(controller);
                  Navigator.pop(context);
                },
                child: const Text("Okay"),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              ),
            ],
          );
        });
  }

  addText(TextEditingController controller) {
    TextModel textModel = TextModel();
    if (controller.text.isNotEmpty) {
      setState(() {
        textModel.text = controller.text.trim();
        textModel.canvasWidth = MediaQuery.of(context).size.width;
        textModel.positions = textModel.centerText();
        textModel.angle = {'a': 0.0};
        textModels.add(textModel);
      });
    }
  }
}
