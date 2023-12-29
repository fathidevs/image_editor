import 'package:flutter/material.dart';
import '../models/promo_image_model.dart';

class PromoImage {
  final PromoImageModel? model;
  PromoImage({
    required this.model,
  });

  get() {
    if (model == null) return Container();
    return Positioned(
      left: model!.leftPosition,
      top: model!.topPosition,
      child: Container(
        color: Colors.amber,
        width: model!.width,
        height: model!.height,
        child: RotatedBox(
          quarterTurns: model!.quarterTurns,
          child: Image.file(
            model!.file,
            filterQuality: FilterQuality.high,
            isAntiAlias: true,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
