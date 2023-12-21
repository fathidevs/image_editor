import 'dart:io';
import 'dart:ui';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_svg/parser.dart';
import 'package:image_editor/editor/image_model.dart';
import 'package:image_editor/kits/master.dart';

class ImageFromStorage {
  // final ImageModel imageModel;
  // ImageFromStorage({required});
  _pickedFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result == null) return;

    return await _info(result);
  }

  Future<Map<String, dynamic>> _info(FilePickerResult result) async {
    String path = result.files.single.path!;
    String exe = result.files.single.extension!;
    return {
      'content': File(result.files.single.path!),
      'size': exe == 'svg'
          ? await _svgDimensions(File(path))
          : await _imgDimensions(File(path)),
      'exe': result.files.single.extension,
    };
  }

  Future<Size> _imgDimensions(File file) async {
    final bytes = file.readAsBytes();
    final codec = await instantiateImageCodec(await bytes);
    final frameInfo = await codec.getNextFrame();
    final image = frameInfo.image;
    final width = image.width.toDouble();
    final height = image.height.toDouble();
    return Size(width, height);
  }

  Future<Size> _svgDimensions(File file) async {
    final svgString = await file.readAsString();
    final svgParser = SvgParser();
    // final svg = SvgPicture.string(svgString);
    final svgRoot = await svgParser.parse(svgString);
    final width = svgRoot.viewport.width;
    final height = svgRoot.viewport.height;
    return Size(width, height);
  }

  pick(ImageModel imageModel, double canvasWidth) async {
    Map<String, dynamic>? pickedFile = await _pickedFile();
    if (pickedFile == null) return;

    Size sizee = pickedFile['size'];

    imageModel.content = pickedFile['content'];
    imageModel.size = sizee;
    imageModel.canvasWidth = canvasWidth / 2;
    imageModel.type = pickedFile['exe'];
    imageModel.dimensions = imageModel.scaleImage();
    imageModel.positions = imageModel.centerImage();
    imageModel.angle = {'a': 0.0};
    imageModel.getShape = imageModel.shape();
    imageModel.clippedTo = Master.allClips();

    return imageModel;
  }
}
