import 'dart:ui';
import 'package:flutter/material.dart';

class ImageModel {
  Map<String, double?>? dimensions;
  Map<String, double?>? positions;
  Map<String, double>? angle;
  String? type;
  dynamic content;
  Size? size;
  double? canvasWidth;
  int? getShape;
  bool isNetwork;
  Map<String, bool>? clippedTo;
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

  Map<String, double> findSize() {
    Map<String, double> returnMap = {};
    if (size?.width != null && size?.height != null) {
      // original dimensions
      double originalW = size!.width;
      double originalH = size!.height;

      if (shape() == 1) {
        // portrait
        double newWidth = originalW * canvasWidth! / originalH;
        returnMap['nw'] = newWidth;
        returnMap['nh'] = canvasWidth!;
      } else {
        // portrait
        double newHeight = originalH * canvasWidth! / originalW;
        returnMap['nw'] = canvasWidth!;
        returnMap['nh'] = newHeight;
      }
    }

    return returnMap;
  }

  Map<String, double?> scaleImage() {
    switch (shape()) {
      case 0: // square

        return {'w': canvasWidth, 'h': canvasWidth};

      case 1: //portrait

        return {'w': null, 'h': canvasWidth};
      case 2: // landscape

        return {'w': canvasWidth, 'h': null};
      default:
        return {'w': null, 'h': null};
    }
  }

  Map<String, double?> centerImage() {
    Map<String, double> sizeFinder = findSize();

    switch (shape()) {
      case 0: // square

        return {
          'x': canvasWidth! / 2,
          'y': (canvasWidth! / 2) 
        };

      case 1: // portrait

        return {
          'x': canvasWidth! / 2 + sizeFinder['nw']! / 2,
          'y': canvasWidth! / 2
        };

      case 2: // landscape

        return {
          'x': canvasWidth! / 2,
          'y': (canvasWidth! / 2) + (sizeFinder['nh']! /2)
        };

      default:
        return {'x': null, 'y': null};
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
