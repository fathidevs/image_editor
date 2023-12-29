import '../models/image_model.dart';
import 'enums.dart';

class ImageState {
  final ImageModel? imageModel;

  ImageState({
    required this.imageModel,
  });

  Map<Enum, double?> drag(double dx, double dy, double maxPosition) {
    if (shape() == 0) {
      // square
      dx -= (imageModel!.dimensions![Dim.height]! * .5);
      dy -= (imageModel!.dimensions![Dim.height]! * .75);
    } else if (shape() == 1) {
      // portrait
      dx -= (imageModel!.dimensions![Dim.height]! * .5);
      dy -= (imageModel!.dimensions![Dim.height]! * .75);
    } else {
      // landscape
      dx -= (imageModel!.dimensions![Dim.width]! * .5);
      dy -= (imageModel!.dimensions![Dim.width]! * .75);
    }
    imageModel!.positions!.update(
        Loc.x,
        (value) => dx > 0.0
            ? dx <= maxPosition
                ? dx
                : maxPosition
            : 0.0);
    imageModel!.positions!.update(
        Loc.y,
        (value) => dy > 0.0
            ? dy <= maxPosition
                ? dy
                : maxPosition
            : 0.0);
    return imageModel!.positions!;
  }

  Map<Enum, double?> scale(double newValue) {
    if (shape() == 0) {
      // square
      imageModel!.dimensions!.update(Dim.width, (value) => newValue);
      imageModel!.dimensions!.update(Dim.height, (value) => newValue);
    } else if (shape() == 1) {
      // portrait
      imageModel!.dimensions!.update(Dim.height, (value) => newValue);
    } else {
      // landscape
      imageModel!.dimensions!.update(Dim.width, (value) => newValue);
    }
    return imageModel!.dimensions!;
  }

  moveX(double value) {
    imageModel!.positions!.update(Loc.x, (val) => value);
    return imageModel!.positions!;
  }

  moveY(double value) {
    imageModel!.positions!.update(Loc.y, (val) => value);
    return imageModel!.positions!;
  }

  int shape() {
    return imageModel!.getShape!;
  }
}
