import 'package:flutter/material.dart';
import 'dart:ui';
import '../tools/enums.dart';

class ImageModel {
  Map<Enum, double?>? dimensions;
  Map<Enum, double?>? positions;
  Map<Enum, double>? angle;
  String? type;
  dynamic content;
  Size? size;
  double? canvasWidth;
  int? getShape;
  bool isNetwork;
  Map<Enum, bool>? clippedTo;
  Color? color;

  ImageModel({
    this.dimensions,
    this.positions,
    this.angle,
    this.type,
    this.content,
    this.getShape,
    this.size,
    this.canvasWidth,
    this.isNetwork = false,
    this.clippedTo,
    this.color,
  });

  Map<Enum, double> findSize() {
    Map<Enum, double> returnMap = {};
    if (size?.width != null && size?.height != null) {
      // original dimensions
      double originalW = size!.width;
      double originalH = size!.height;

      if (shape() == 1) {
        // portrait
        double newWidth = originalW * canvasWidth! / originalH;
        returnMap[Dim.newWidth] = newWidth;
        returnMap[Dim.newHeight] = canvasWidth!;
      } else {
        // portrait
        double newHeight = originalH * canvasWidth! / originalW;
        returnMap[Dim.newWidth] = canvasWidth!;
        returnMap[Dim.newHeight] = newHeight;
      }
    }

    return returnMap;
  }

  Map<Enum, double?> scaleImage() {
    switch (shape()) {
      case 0: // square

        return {Dim.width: canvasWidth, Dim.height: canvasWidth};

      case 1: //portrait

        return {Dim.width: null, Dim.height: canvasWidth};
      case 2: // landscape

        return {Dim.width: canvasWidth, Dim.height: null};
      default:
        return {Dim.width: null, Dim.height: null};
    }
  }

  Map<Enum, double?> centerImage() {
    Map<Enum, double> sizeFinder = findSize();

    switch (shape()) {
      case 0: // square

        return {Loc.x: canvasWidth! / 2, Loc.y: (canvasWidth! / 2)};

      case 1: // portrait

        return {
          Loc.x: canvasWidth! / 2 + sizeFinder[Dim.newWidth]! / 2,
          Loc.y: canvasWidth! / 2
        };

      case 2: // landscape

        return {
          Loc.x: canvasWidth! / 2,
          Loc.y: (canvasWidth! / 2) + (sizeFinder[Dim.newHeight]! / 2)
        };

      default:
        return {Loc.x: null, Loc.y: null};
    }
  }

  int shape() {
    if (size?.height != null && size?.width != null) {
      if (size!.height == size!.width) {
        return 0; // square
      } else if (size!.height > size!.width) {
        return 1; //portrait
      } else {
        return 2; //landscape
      }
    } else {
      return -1;
    }
  }

  bool isSvg(String path) {
    // if true: image can be colored
    return getType(path) == 'svg';
  }

  String getType(String path) {
    // if true: image can be colored
    return path.split('.').last.toLowerCase();
  }
}
