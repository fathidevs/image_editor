import 'package:flutter/material.dart';
import 'package:image_editor/kits/pants.dart';
// import 'dart:ui' as ui;

import 'package:image_editor/kits/shirt.dart';

class Kits extends StatelessWidget {
  final Color shirtColor;
  final Color pantsColor;
  const Kits({
    super.key,
    this.shirtColor = Colors.black,
    this.pantsColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: MediaQuery.sizeOf(context),
      painter: KitPainter(
        shirtColor: shirtColor,
        pantsColor: pantsColor,
      ),
    );
  }
}

class KitPainter extends CustomPainter {
  final Color shirtColor;
  final Color pantsColor;
  KitPainter({
    required this.shirtColor,
    required this.pantsColor,
  });
  @override
  void paint(Canvas canvas, Size size) {
    drawAndPaint(shirtColor, size, Shirt().getClip(size), canvas);
    drawAndPaint(pantsColor, size, Pants().getClip(size), canvas);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  void drawAndPaint(Color color, Size size, Path path, Canvas canvas) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    canvas.drawPath(path, paint);
  }
}
