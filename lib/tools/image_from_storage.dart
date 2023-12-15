import 'dart:io';
import 'dart:ui';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_svg/parser.dart';

class ImageFromStorage {
  pick() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result == null) return;

    return await info(result);
  }

  Future<Map<String, dynamic>> info(FilePickerResult result) async {
    String path = result.files.single.path!;
    String exe = result.files.single.extension!;
    return {
      'content': File(result.files.single.path!),
      'size': exe == 'svg'
          ? await svgDimensions(File(path))
          : await imgDimensions(File(path)),
      'exe': result.files.single.extension,
    };
  }

  Future<Size> imgDimensions(File file) async {
    final bytes = file.readAsBytes();
    final codec = await instantiateImageCodec(await bytes);
    final frameInfo = await codec.getNextFrame();
    final image = frameInfo.image;
    final width = image.width.toDouble();
    final height = image.height.toDouble();
    return Size(width, height);
  }

  Future<Size> svgDimensions(File file) async {
    final svgString = await file.readAsString();
    final svgParser = SvgParser();
    // final svg = SvgPicture.string(svgString);
    final svgRoot = await svgParser.parse(svgString);
    final width = svgRoot.viewport.width;
    final height = svgRoot.viewport.height;
    return Size(width, height);
  }
}
