import 'package:flutter/material.dart';
import 'editor/dls_kit_editor.dart';
import 'models/image_model.dart';
import 'models/logo_image_model.dart';
import 'models/promo_image_model.dart';
import 'models/text_model.dart';
import 'tools/color_picker.dart';
import 'tools/enums.dart';
import 'tools/image_from_link.dart';
import 'tools/image_from_storage.dart';
import 'tools/image_state.dart';
import 'tools/kit_selector.dart';
import 'tools/selected_kit_color.dart';
import 'widgets/custom_stl_widgets.dart';

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
  Map<Enum, LogoImageModel> logoModels = {};
  PromoImageModel? promoImage;
  List<TextModel> textModels = [];
  int pickedImageIndex = -1;
  int pickedTextIndex = -1;
  bool imagePickerIsNotActive = true;

  KitSelector kitColorSelector = KitSelector();
  SelectedKitColor selectedKitColor = SelectedKitColor();
  Color historyColor = Colors.white;

  // KitColorSelector kitColorSelector = KitColorSelector();

  @override
  Widget build(BuildContext context) {
    double canvasWidth = MediaQuery.of(context).size.width;
    final maxPosition = canvasWidth * .95;
    ImageState imageState = ImageState(
      imageModel: imageModels.isNotEmpty ? imageModels[pickedImageIndex] : null,
    );

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
                promoImage: promoImage,
                imageModels: imageModels,
                logoModels: logoModels,
                textModels: textModels,
                kitColors: selectedKitColor,
                pickedImageIndex: pickedImageIndex,
                onPanUpdateImageController: (DragUpdateDetails details) =>
                    onPanUpdateImageController(
                        imageState, details, maxPosition),
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
                    child: imageControllerWidgets(
                        imageState, maxPosition, canvasWidth),
                  ),
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
    return SizedBox(
      height: 250,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: const Text("pick color"),
                        content: ColorPickerx.pick(
                          defaultColor:
                              selectedKitColor.history(kitColorSelector),
                          onColorChanged: (color) {
                            setState(() {
                              historyColor = color;
                            });
                          },
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selectedKitColor.paint(
                                      kitColorSelector, historyColor);
                                });
                                Navigator.pop(context);
                              },
                              child: const Text("okay")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("cancel")),
                        ],
                      );
                    });
              },
              child: const Text("color"),
            ),
            ElevatedButton(
              onPressed: () {
                if (imagePickerIsNotActive) logoImageFromStorage(canvasWidth);
              },
              child: const Text(
                "image from storage-logo",
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (imagePickerIsNotActive) promoImageFromStorage(canvasWidth);
              },
              child: const Text(
                "image from storage-promo",
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (imagePickerIsNotActive) imageFromStorage(canvasWidth);
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
              onPressed: () {},
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
        ),
      ),
    );
  }

  Widget imageControllerWidgets(
      ImageState imageState, double maxPosition, double canvasWidth) {
    double? imgWidth = pickedImageIndex >= 0
        ? imageModels[pickedImageIndex].dimensions![Dim.width]
        : null;
    double? imgHeight = pickedImageIndex >= 0
        ? imageModels[pickedImageIndex].dimensions![Dim.height]
        : null;
    return Column(
      children: [
        CustomStlWidgets().slider(
            active: imageModels.isNotEmpty,
            icon: Icons.swap_horiz_rounded,
            max: maxPosition,
            value: imageModels.isNotEmpty
                ? imageModels[pickedImageIndex].positions![Loc.x]!
                : 0.0,
            onChanged: (value) {
              setState(() {
                imageState.moveX(value);
              });
            }),
        CustomStlWidgets().slider(
            active: imageModels.isNotEmpty,
            icon: Icons.swap_vert_rounded,
            max: maxPosition,
            value: imageModels.isNotEmpty
                ? imageModels[pickedImageIndex].positions![Loc.y]!
                : 0.0,
            onChanged: (value) {
              setState(() {
                imageState.moveY(value);
              });
            }),
        CustomStlWidgets().slider(
            active: imageModels.isNotEmpty,
            icon: Icons.open_in_full_rounded,
            min: 50.0,
            max: canvasWidth,
            value: imageModels.isEmpty
                ? 50
                : (imgWidth ?? imgHeight)! <= 50.0
                    ? 50.0
                    : (imgWidth ?? imgHeight)!,
            onChanged: (v) {
              setState(() {
                imageState.scale(v);
              });
            }),
        CustomStlWidgets().slider(
            active: imageModels.isNotEmpty,
            icon: Icons.rotate_right_rounded,
            max: 270.0,
            value: imageModels.isNotEmpty
                ? imageModels[pickedImageIndex].angle![Loc.a]!
                : 0.0,
            onChanged: (value) {
              setState(() {
                imageModels[pickedImageIndex]
                    .angle!
                    .update(Loc.a, (val) => value);
              });
            }),
      ],
    );
  }

  Widget pickers() {
    return Column(
      children: [
        CustomStlWidgets().checkBox(
            'full shirt',
            imageModels.isNotEmpty
                ? imageModels[pickedImageIndex].clippedTo![Kit.fullShirt]!
                : false, (v) {
          if (imageModels.isNotEmpty) {
            setState(() {
              imageModels
                  .elementAt(pickedImageIndex)
                  .clippedTo!
                  .update(Kit.fullShirt, (value) => !value);
            });
          }
        }),
        CustomStlWidgets().checkBox("shirt color", kitColorSelector.fullShirt,
            (v) {
          setState(() {
            kitColorSelector.fullShirt = v;
          });
        }),
      ],
    );
  }

  snackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  promoImageFromStorage(double canvasWidth) async {
    setState(() {
      imagePickerIsNotActive = false;
    });
    ImageFromStorage imageFromStorage = ImageFromStorage();

    final pick = await imageFromStorage.pickPromo(canvasWidth);

    if (pick != null) {
      setState(() {
        promoImage = pick;
      });
    }

    setState(() {
      imagePickerIsNotActive = true;
    });
  }

  logoImageFromStorage(double canvasWidth) async {
    setState(() {
      imagePickerIsNotActive = false;
    });
    ImageFromStorage imageFromStorage = ImageFromStorage();

    final pick = await imageFromStorage.pickLogo(canvasWidth);

    if (pick != null) {
      setState(() {
        logoModels = pick;
      });
    }

    setState(() {
      imagePickerIsNotActive = true;
    });
  }

  imageFromStorage(double canvasWidth) async {
    setState(() {
      imagePickerIsNotActive = false;
    });
    ImageFromStorage imageFromStorage = ImageFromStorage();

    ImageModel imageModel = ImageModel();
    final pick = await imageFromStorage.pick(imageModel, canvasWidth);

    if (pick != null) {
      setState(() {
        imageModels.add(pick);

        pickedImageIndex = imageModels.length - 1;
      });
    }

    setState(() {
      imagePickerIsNotActive = true;
    });
  }

  imageFromLink(String link, double w) async {
    ImageModel imageModel = await ImageFromLink.imageFromLink(link, w);
    setState(() {
      imageModels.add(imageModel);
      pickedImageIndex = imageModels.length - 1;
    });
  }

  onPanUpdateImageController(
      ImageState imageState, DragUpdateDetails details, double maxPosition) {
    double dx = details.globalPosition.dx;
    double dy = details.globalPosition.dy;
    setState(() {
      imageModels[pickedImageIndex].positions =
          imageState.drag(dx, dy, maxPosition);
    });
  }

  changeImageColor() {
    if (imageModels.isNotEmpty) {
      setState(() {
        imageModels[pickedImageIndex].color = Colors.amber;
      });
    }
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
        textModel.angle = {Loc.a: 0.0};
        textModels.add(textModel);
      });
    }
  }
}
