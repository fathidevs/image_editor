import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/image_model.dart';
import '../tools/enums.dart';

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
          width: model.dimensions![Dim.width],
          height: model.dimensions![Dim.height],
          color: model.color,
        );
      }
      return Image.network(
        model.content,
        width: model.dimensions![Dim.width],
        height: model.dimensions![Dim.height],
      );
    } else {
      if (model.type == 'svg') {
        return SvgPicture.file(
          model.content,
          width: model.dimensions![Dim.width],
          height: model.dimensions![Dim.height],
        );
      }
      return Image.file(
        model.content,
        width: model.dimensions![Dim.width],
        height: model.dimensions![Dim.height],
        // colorBlendMode: BlendMode.srcATop,
        // color: Colors.green,
      );
    }
  }
}
