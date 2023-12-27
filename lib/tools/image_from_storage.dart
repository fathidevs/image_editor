import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_svg/parser.dart';
import 'package:image_editor/dlsk_consts.dart';
import 'package:image_editor/editor/image_model.dart';
import 'package:image_editor/kits/master.dart';
import 'package:image_editor/kits/promo_image_model.dart';
import '../kits/logo_image_model.dart';

class ImageFromStorage {
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

  Future pickPromo(double canvasWidth) async {
    Map<String, dynamic>? pickedFile = await _pickedFile();
    if (pickedFile == null) return;
    // final bytes = pickedFile['content'].readAsBytes();
    // final codec0 = await instantiateImageCodec(await bytes);
    // int w = (await codec0.getNextFrame()).image.width;
    // int h = (await codec0.getNextFrame()).image.height;

    return PromoImageModel(
      file: pickedFile['content'],
      leftPosition: canvasWidth * 0.7439453,
      topPosition: canvasWidth * 0.2916016,
      width: canvasWidth * 0.07207031,
      height: canvasWidth * 0.1550781,
      quarterTurns: 0,
    );
  }

  Future pickLogo(double canvasWidth) async {
    Map<String, dynamic>? pickedFile = await _pickedFile();

    if (pickedFile == null) return;

    return {
      Kc.krs: LogoImageModel(
        file: pickedFile['content'],
        leftPosition: canvasWidth * 0.5767578,
        topPosition: canvasWidth * 0.1560547,
        width: canvasWidth * 0.03437500,
        height: canvasWidth * 0.04140625,
        quarterTurns: 3,
      ),
      Kc.kls: LogoImageModel(
        file: pickedFile['content'],
        leftPosition: canvasWidth * 0.8330078,
        topPosition: canvasWidth * 0.1560547,
        width: canvasWidth * 0.03437500,
        height: canvasWidth * 0.04140625,
        quarterTurns: 3,
      ),
      Kc.kfs: LogoImageModel(
        file: pickedFile['content'],
        leftPosition: canvasWidth * 0.6871094,
        topPosition: canvasWidth * 0.4058594,
        width: canvasWidth * 0.02792969,
        height: canvasWidth * 0.03359375,
        quarterTurns: 3,
      ),
      Kc.krsh: LogoImageModel(
        file: pickedFile['content'],
        leftPosition: canvasWidth * 0.7318359,
        topPosition: canvasWidth * 0.8837891,
        width: canvasWidth * 0.04218750,
        height: canvasWidth * 0.03496094,
        quarterTurns: 0,
      ),
    };
  }

  resizedImage(dynamic bytes, int? width, int? height) async {
    final codec = await instantiateImageCodec(
      await bytes,
      targetWidth: width,
      targetHeight: height,
    );
    final frameInfo = await codec.getNextFrame();
    return frameInfo.image;
  }
}
