import 'package:flutter/material.dart';
import '../models/logo_image_model.dart';
import '../tools/enums.dart';

class LogoImagesList {
  final BuildContext cx;
  final Map<Enum, LogoImageModel> models;
  const LogoImagesList({
    required this.models,
    required this.cx,
  });
  _logo(model) {
    return Positioned(
      left: model.leftPosition,
      top: model.topPosition,
      child: Container(
        width: model.width,
        height: model.height,
        color: Colors.black,
        child: RotatedBox(
          quarterTurns: model.quarterTurns,
          child: Image.file(
            model.file,
            filterQuality: FilterQuality.high,
            isAntiAlias: true,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  get() {
    return [
      if (models[Kit.rightSock] != null) _logo(models[Kit.rightSock]!),
      if (models[Kit.leftSock] != null) _logo(models[Kit.leftSock]!),
      if (models[Kit.fullShirt] != null) _logo(models[Kit.fullShirt]!),
      if (models[Kit.rightShort] != null) _logo(models[Kit.rightShort]!),
    ];
  }
}
