import 'dart:ui';

class ImageSettings {
  final List<Map<String, double?>> imagesDimension;
  final List<Map<String, double?>> imagesPosition;
  final List<Map<String, double?>> imagesAngle;

  ImageSettings({
    required this.imagesDimension,
    required this.imagesPosition,
    required this.imagesAngle,
  });

  init() {
    imagesDimension.add({});
    imagesPosition.add({});
    imagesAngle.add({});
  }

  Map<String, double> findSize(Size size, double w, bool shape) {
    // original dimensions
    double originalW = size.width;
    double originalH = size.height;

    Map<String, double> returnMap = {};
    if (shape) {
      double newWidth = originalW * w / originalH;
      returnMap['nw'] = newWidth;
      returnMap['nh'] = w;
    } else {
      double newHeight = originalH * w / originalW;
      returnMap['nw'] = w;
      returnMap['nh'] = newHeight;
    }

    return returnMap;
  }

  List<Map<String, double?>> centerImage(int index, double imageWidth,
      double imageHeight, double canvasWidth, List<int> shape) {
    switch (shape[index]) {
      case 0: // square

        imagesPosition[index].update('x', (value) => (imageWidth / 2),
            ifAbsent: () => (imageWidth / 2));
        imagesPosition[index].update('y', (value) => (imageHeight / 2),
            ifAbsent: () => (imageHeight / 2));
        return imagesPosition;

      case 1: // portrait
        imagesPosition[index].update(
            'x', (value) => (canvasWidth / 2) + (imageWidth / 2),
            ifAbsent: () => (canvasWidth / 2) + (imageWidth / 2));
        imagesPosition[index].update("y", (value) => (imageHeight / 2),
            ifAbsent: () => (imageHeight / 2));
        return imagesPosition;
      case 2:
        imagesPosition[index].update('x', (value) => (imageWidth / 2),
            ifAbsent: () => (imageWidth / 2));
        imagesPosition[index].update(
            "y", (value) => (canvasWidth / 2) + (imageHeight / 2),
            ifAbsent: () => (canvasWidth / 2) + (imageHeight / 2));
        return imagesPosition;
      default:
        imagesPosition[index].update('x', (value) => (imageWidth / 2),
            ifAbsent: () => (imageWidth / 2));
        imagesPosition[index].update('y', (value) => (imageHeight / 2),
            ifAbsent: () => (imageHeight / 2));
        return imagesPosition;
    }
  }

  List<Map<String, double?>> scaleImage(
      int index, List<int> shape, double canvasWidth) {
    switch (shape[index]) {
      case 0: // square
        imagesDimension[index]
            .update("w", (value) => null, ifAbsent: () => null);
        imagesDimension[index]
            .update("h", (value) => canvasWidth, ifAbsent: () => canvasWidth);
        return imagesDimension;

      case 1: //portrait
        imagesDimension[index]
            .update("w", (value) => null, ifAbsent: () => null);
        imagesDimension[index]
            .update("h", (value) => canvasWidth, ifAbsent: () => canvasWidth);
        return imagesDimension;
      case 2: // landscape
        imagesDimension[index]
            .update("w", (value) => canvasWidth, ifAbsent: () => canvasWidth);
        imagesDimension[index]
            .update("h", (value) => null, ifAbsent: () => null);
        return imagesDimension;
      default:
        imagesDimension[index]
            .update("w", (value) => null, ifAbsent: () => null);
        imagesDimension[index]
            .update("h", (value) => canvasWidth, ifAbsent: () => canvasWidth);
        return imagesDimension;
    }
  }

  int shape(Size size) {
    if (size.height == size.width) {
      return 0; // square
    } else if (size.height > size.width) {
      return 1; //portrait
    } else {
      return 2; //landscape
    }
  }
}
