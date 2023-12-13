import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_editor/editor/image_model.dart';

class ImageContainer extends StatelessWidget {
  final ImageModel model;

  const ImageContainer({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return getImage();
  }

  Widget getImage() {
    if (model.isNetwork) {
      if (model.type == 'svg') {
        return SvgPicture.network(
          model.content,
          width: model.dimensions!['w'],
          height: model.dimensions!['h'],
          color: model.color,
        );
      }
      return Image.network(
        model.content,
        width: model.dimensions!['w'],
        height: model.dimensions!['h'],
      );
    } else {
      if (model.type == 'svg') {
        return SvgPicture.file(
          model.content,
          width: model.dimensions!['w'],
          height: model.dimensions!['h'],
        );
      }
      return Image.file(
        model.content,
        width: model.dimensions!['w'],
        height: model.dimensions!['h'],
      );
    }
  }
}
