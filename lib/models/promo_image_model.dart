import 'dart:io';

class PromoImageModel {
  final File file;
  final double leftPosition;
  final double topPosition;
  final double width;
  final double height;
  final int quarterTurns;
  PromoImageModel({
    required this.file,
    required this.leftPosition,
    required this.topPosition,
    required this.width,
    required this.height,
    required this.quarterTurns,
  });
}
