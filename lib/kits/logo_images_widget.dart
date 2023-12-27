import 'package:flutter/material.dart';
import 'package:image_editor/dlsk_consts.dart';
import 'logo_image_model.dart';

class LogoImagesList {
  final BuildContext cx;
  final Map<String, LogoImageModel> models;
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
      if (models[Kc.krs] != null) _logo(models[Kc.krs]!),
      if (models[Kc.kls] != null) _logo(models[Kc.kls]!),
      if (models[Kc.kfs] != null) _logo(models[Kc.kfs]!),
      if (models[Kc.krsh] != null) _logo(models[Kc.krsh]!),
    ];
  }
}
