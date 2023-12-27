import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_editor/editor/image_model.dart';

import 'image_container.dart';

class AddedImageWidgets {
  final List<ImageModel> models;
  AddedImageWidgets({
    required this.models,
  });
  Widget get(int index) {
    return List.generate(models.length, (i) {
      return Positioned(
        left: models[i].positions!['x'],
        top: models[i].positions!['y'],
        child: Transform.rotate(
          angle: ((models[i].angle!['a'] ?? 0.0) / 180.0) * pi,
          child: ImageContainer(
            model: models[i],
          ),
        ),
      );
    })[index];
  }
}
