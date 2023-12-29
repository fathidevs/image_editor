import 'dart:math';
import 'package:flutter/material.dart';
import '../models/image_model.dart';
import '../tools/enums.dart';
import 'image_container.dart';

class AddedImageWidgets {
  final List<ImageModel> models;
  AddedImageWidgets({
    required this.models,
  });
  Widget get(int index) {
    return List.generate(models.length, (i) {
      return Positioned(
        left: models[i].positions![Loc.x],
        top: models[i].positions![Loc.y],
        child: Transform.rotate(
          angle: ((models[i].angle![Loc.a] ?? 0.0) / 180.0) * pi,
          child: ImageContainer(
            model: models[i],
          ),
        ),
      );
    })[index];
  }
}
