import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_editor/editor/image_model.dart';
import 'package:image_editor/kits/master.dart';
import 'package:xml/xml.dart' as xml;

class ImageFromLink {
  static Future<ImageModel> imageFromLink(String link, double w) async {
    bool isSvg = ImageModel().isSvg(link);

    Size sizee = isSvg ? await _svgSize(link) : await _imgSize(link);

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
    return imageModel;
    
  }

  static Future<Size> _imgSize(link) async {
    try {
      NetworkAssetBundle netWorkAssetBundle =
          NetworkAssetBundle(Uri.parse(link));
      final ByteData data = await netWorkAssetBundle.load(link);
      final Uint8List bytes = data.buffer.asUint8List();

      final decodedImage = await decodeImageFromList(bytes);

      return Size(
          decodedImage.width.toDouble(), decodedImage.height.toDouble());
    } on SocketException catch (e) {
      return const Size(-1, -1);
    }
  }

  static _svgSize(String link) async {
    Size size = Size.zero;

    final response = await http.get(Uri.parse(link));
    final svgContent = response.body;
    if (response.statusCode == 200) {
      final document = xml.XmlDocument.parse(svgContent);
      final svgElement = document.rootElement;
      final width = svgElement.getAttribute('width').toString();
      final height = svgElement.getAttribute('height').toString();
      size = Size(double.parse(width), double.parse(height));
    } else {}

    return size;
  }
}
