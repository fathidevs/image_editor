import 'package:flutter/material.dart';
import '../tools/selected_kit_color.dart';
import '../kits/parts/full_shirt.dart';
import '../kits/parts/circle.dart';
import '../kits/parts/left_short.dart';
import '../kits/parts/left_short_sleeve.dart';
import '../kits/parts/left_sock.dart';
import '../kits/parts/left_under_sleeve.dart';
import '../kits/parts/left_long_sleeve.dart';
import '../kits/parts/right_long_sleeve.dart';
import '../kits/parts/right_short.dart';
import '../kits/parts/right_short_sleeve.dart';
import '../kits/parts/right_sock.dart';
import '../kits/parts/right_under_sleeve.dart';
import '../kits/parts/rings.dart';

class Kits extends StatelessWidget {
  final SelectedKitColor color;

  const Kits({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: CustomPaint(
        size: MediaQuery.sizeOf(context),
        painter: KitPainter(
          color: color,
        ),
      ),
    );
  }
}

class KitPainter extends CustomPainter {
  final SelectedKitColor color;
  KitPainter({
    required this.color,
  });
  @override
  void paint(Canvas canvas, Size size) {
    drawAndPaint(color.rightSock, RightSock().getClip(size), canvas);
    drawAndPaint(color.leftSock, LeftSock().getClip(size), canvas);
    //
    drawAndPaint(color.rightShort, RightShort().getClip(size), canvas);
    drawAndPaint(color.leftShort, LeftShort().getClip(size), canvas);
    //
    drawAndPaint(
        color.rightShortSleeve, RightShortSleeve().getClip(size), canvas);
    drawAndPaint(
        color.leftShortSleeve, LeftShortSleeve().getClip(size), canvas);
    //
    drawAndPaint(
        color.rightUnderSleeve, RightUnderSleeve().getClip(size), canvas);
    drawAndPaint(
        color.leftUnderSleeve, LeftUnderSleeve().getClip(size), canvas);
    //
    drawAndPaint(
        color.rightLongSleeve, RightLongSleeve().getClip(size), canvas);
    drawAndPaint(color.leftLongSleeve, LeftLongSleeve().getClip(size), canvas);
    //
    drawAndPaint(color.circle, Circle().getClip(size), canvas);
    //
    drawAndPaint(color.rings, Rings().getClip(size), canvas);
    //
    drawAndPaint(color.fullShirt, FullShirt().getClip(size), canvas);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  void drawAndPaint(Color color, Path path, Canvas canvas) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    canvas.drawPath(path, paint);
  }
}
