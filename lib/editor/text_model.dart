import 'package:flutter/material.dart';

class TextModel {
  String? text;
  Map<String, double?>? dimensions;
  Map<String, double?>? positions;
  Map<String, double>? angle;
  Size? size;
  double? canvasWidth;
  Map<String, bool>? clippedTo;
  Color? color;

  TextModel({
    this.text,
    this.dimensions,
    this.positions,
    this.angle,
    this.size,
    this.canvasWidth,
    this.clippedTo,
    this.color,
  });

  Map<String, double> centerText() {
    return {
      'x': canvasWidth! * .2,
      'y': canvasWidth! * .2,
    };
  }
}
