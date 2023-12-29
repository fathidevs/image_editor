import 'package:flutter/material.dart';
import '../tools/enums.dart';

class TextModel {
  String? text;
  Map<Enum, double?>? dimensions;
  Map<Enum, double?>? positions;
  Map<Enum, double>? angle;
  Size? size;
  double? canvasWidth;
  Map<Enum, bool>? clippedTo;
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

  Map<Enum, double> centerText() {
    return {
      Loc.x: canvasWidth! * .2,
      Loc.y: canvasWidth! * .2,
    };
  }
}
