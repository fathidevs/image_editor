import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_editor/canvasx.dart';
import 'package:image_editor/image_model.dart';
import 'package:image_editor/image_picker.dart';
import 'package:image_editor/permissions.dart';
import 'package:image_editor/picked_images.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';

class Editor extends StatefulWidget {
  const Editor({super.key});

  @override
  State<Editor> createState() => _EditorState();
}

Future<String> createFolder(String folderName) async {
  final dir = Directory(
      '${(Platform.isAndroid ? Directory("storage/emulated/0/Pictures") //FOR ANDROID
              : await getApplicationSupportDirectory() //FOR IOS
          ).path}/$folderName');
  var status = await Permission.storage.status;
  if (!status.isGranted) {
    await Permission.storage.request();
  }
  if ((await dir.exists())) {
    return dir.path;
  } else {
    dir.create();
    return dir.path;
  }
}

_saveImg(img) async {
  String folder = await createFolder("myImgEditor");

  var f = await File(
    "$folder/imageq350.png",
  ).writeAsBytes(await img!);
}

Future? _selectedImage;

class _EditorState extends State<Editor> {
  double startX = 1.0;
  double endX = 1.0;
  Map<int, double> xPosition = {};
  Map<int, double> yPosition = {};
  int pickedImage = -1;
  @override
  Widget build(BuildContext context) {
    List<Widget> btns() => [
          ElevatedButton(
            style: const ButtonStyle(),
            onPressed: () {
              setState(() {
                _selectedImage = PickImg().fromGallery();
              });
            },
            child: const Text("add image"),
          ),
          Column(
            children: [
              Slider(
                min: 0.0,
                max: MediaQuery.of(context).size.width - 100.0,
                value: xPosition[pickedImage] ?? 0.0,
                onChanged: (value) {
                  setState(() {
                    xPosition.update(pickedImage, (val) => value,
                        ifAbsent: () => value);
                  });
                },
              ),
              Slider(
                min: 0.0,
                max: MediaQuery.of(context).size.width - 100.0,
                value: yPosition[pickedImage] ?? 0.0,
                onChanged: (value) {
                  setState(() {
                    yPosition.update(pickedImage, (val) => value,
                        ifAbsent: () => value);
                  });
                },
              ),
            ],
          )
        ];
    List<Widget> images = [
      Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    ];
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1 / 1,
          child: Stack(
            children: [
              CanvasX(),
              ImageModel(
                leftPosition: xPosition,
                topPosition: yPosition,
                getIndex: (index) {
                  setState(() {
                    pickedImage = index;
                  });
                },
                children: images,
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
