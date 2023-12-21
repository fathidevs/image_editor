import 'package:image_editor/editor/image_model.dart';

class ImageState {
  final ImageModel? imageModel;

  ImageState({
    required this.imageModel,
  });

  Map<String, double?> drag(double dx, double dy, double maxPosition) {
    if (shape() == 0) {
      // square
      dx -= (imageModel!.dimensions!['h']! * .5);
      dy -= (imageModel!.dimensions!['h']! * .75);
    } else if (shape() == 1) {
      // portrait
      dx -= (imageModel!.dimensions!['h']! * .5);
      dy -= (imageModel!.dimensions!['h']! * .75);
    } else {
      // landscape
      dx -= (imageModel!.dimensions!['w']! * .5);
      dy -= (imageModel!.dimensions!['w']! * .75);
    }
    imageModel!.positions!.update(
        'x',
        (value) => dx > 0.0
            ? dx <= maxPosition
                ? dx
                : maxPosition
            : 0.0);
    imageModel!.positions!.update(
        'y',
        (value) => dy > 0.0
            ? dy <= maxPosition
                ? dy
                : maxPosition
            : 0.0);
    return imageModel!.positions!;
  }

  Map<String, double?> scale(double newValue) {
    if (shape() == 0) {
      // square
      imageModel!.dimensions!.update('w', (value) => newValue);
      imageModel!.dimensions!.update('h', (value) => newValue);
    } else if (shape() == 1) {
      // portrait
      imageModel!.dimensions!.update('h', (value) => newValue);
    } else {
      // landscape
      imageModel!.dimensions!.update('w', (value) => newValue);
    }
    return imageModel!.dimensions!;
  }

  moveX(double value) {
    imageModel!.positions!.update('x', (val) => value);
    return imageModel!.positions!;
  }
  moveY(double value) {
    imageModel!.positions!.update('y', (val) => value);
    return imageModel!.positions!;
  }

  int shape() {
    return imageModel!.getShape!;
  }
}
