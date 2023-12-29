import 'dart:math';
import 'package:flutter/material.dart';
import '../models/text_model.dart';
import 'text_container.dart';

class AddedTextWidgets {
  final List<TextModel> models;
  AddedTextWidgets({
    required this.models,
  });
  Widget get(int index) {
    return List.generate(models.length, (i) {
      return Positioned(
        left: models[i].positions!['x'],
        top: models[i].positions!['y'],
        child: Transform.rotate(
          angle: ((models[i].angle!['a'] ?? 0.0) / 180.0) * pi,
          child: TextContainer(
            model: models[i],
          ),
        ),
      );
    })[index];
  }
}
