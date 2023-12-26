import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_editor/dlsk_consts.dart';

class LogoImagesWidget extends StatelessWidget {
  final Map<String, LogoImageModel> models;
  const LogoImagesWidget({
    super.key,
    required this.models,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Stack(
        children: [
          if (models[Kc.krs] != null) logo(context, models[Kc.krs]!),
          if (models[Kc.kls] != null) logo(context, models[Kc.kls]!),
          if (models[Kc.kfs] != null) logo(context, models[Kc.kfs]!),
          if (models[Kc.krsh] != null) logo(context, models[Kc.krsh]!),
        ],
      ),
    );
  }

  logo(BuildContext cx, LogoImageModel model) {
    return Positioned(
      left: model.leftPosition,
      top: model.topPosition,
      child: Image.file(
        model.file,
        width: model.width,
        height: model.height,
        filterQuality: FilterQuality.high,
        isAntiAlias: true,
      ),
    );
  }
}

class LogoImageModel {
  final File file;
  final double leftPosition;
  final double topPosition;
  final double width;
  final double height;
  LogoImageModel({
    required this.file,
    required this.leftPosition,
    required this.topPosition,
    required this.width,
    required this.height,
  });
}
